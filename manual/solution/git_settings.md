## Setup Git Track At Terminal

Copy & Paste that in your ~/.bashrc
```bash
# Function to fetch Git branch or tag
git_branch() {
    local branch
    branch=$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --exact-match 2>/dev/null)
    
    # Check if in the middle of a merge
    if [ -f .git/MERGE_HEAD ]; then
        branch="$branch (MERGING)"
    fi
    
    echo "$branch"
}

# Function to check uncommitted changes
git_dirty() {
    if [[ -n $(git status --porcelain 2>/dev/null) ]]; then
        echo "*"
    fi
}

# Function to check commits ready to push
git_push() {
    local status
    status=$(git status -sb 2>/dev/null) # Get short and branch status
    
    if [[ $status == *"[ahead"* ]]; then
        echo "↑"  # Arrow up means changes are ready to push
    fi
}

# Function to declare Git prompt
git_prompt_info() {
    local branch dirty push
    branch=$(git_branch)
    dirty=$(git_dirty)
    push=$(git_push)

    if [[ -n $branch ]]; then
        echo " ($branch$dirty$push)"
    fi
}

# Export PS1 variable
export PS1="\[\e[32m\]\u@\h:\w\[\e[33m\]\$(git_prompt_info)\[\e[0m\]\$ "
```
Now, Run this:

```bash
source ~/.bashrc