# 🚀 ✨ Pull Request Template ✨ 🚀

## Basic Checklist
*   [ ] **File Names:** Are the filenames in Snake Case?
*   [ ] **File Format:** Are the files in the appropriate format as described in [CONTRIBUTING.md](../CONTRIBUTING.md)

---

## 📝 Summary / Motivation (The "Why")

*   **What does this PR do?**
    (Provide a one or two-sentence summary of the main feature, fix, or change. Be direct and clear.)
*   **Why is this change needed?**
    (Explain the problem this change solves or the feature it enables. Reference any associated tickets, e.g., "Fixes ticket #[JIRA-123]" or "Implements requirement from user story XYZ.")
*   **Impact:**
    (If the change affects performance, security, or other major aspects, describe the expected impact. e.g., *Performance improvement*, *Increased API exposure*, *Minor UI tweak*.)

---

## 🔨 Changes & Implementation Details (The "What" and "How") 
ONLY FOR source code PRs; OTHERWISE DELETE EVERYTHING BELOW.
### 📚 Scope of Changes
*   **Files/Modules Changed:**
    (List the main files or modules touched by this PR. e.g., `src/api/user.py`, `components/Header.jsx`, `Makefile`.)
*   **High-Level Overview:**
    (Describe the technical implementation steps taken. Did you add a database migration? Did you refactor a core service? Detail the logic flow.)
*   **Design Decisions:**
    (If there were any key architectural choices made (e.g., *Decided to use Redis instead of Memcached for caching*), document them here. This saves time during code review.)

### ⚠️ Breaking Changes
*(**REQUIRED:** Only fill out this section if this PR introduces any breaking changes to the public API or internal contracts.)*
*   **List of changes:**
    *   `[module.function]`: Old Signature $\rightarrow$ New Signature (e.g., `api.fetchUser(id: int)` $\rightarrow$ `api.getUser(user_id: UUID)`).
    *   Any configuration changes required.
*   **Migration Path:**
    (Provide clear instructions on how consumers of this code must update their usage.)

---

## ✅ Testing & Verification

### 🧪 How to Test Locally
*   **Prerequisites:**
    (List any specific setup steps needed, like running a database migration or pulling specific environment variables.)
*   **Test Instructions:**
    1.  (Step 1: e.g., Run `npm run build`.)
    2.  (Step 2: e.g., Run the test suite for the affected module: `npm test -- src/moduleA`.)
    3.  (Step 3: e.g., Manually test the main user flow via the staging UI.)
*   **Expected Result:**
    (Describe what the application should do when the feature works correctly.)
*   **Test Coverage:**
    (If applicable, note if new tests were written or if existing ones needed updating.)

### 🐛 Test Cases to Validate
*   **Happy Path:** (What is the ideal flow?)
*   **Edge Cases:** (What happens with null, empty lists, max length inputs, etc.?)
*   **Failure Modes:** (What should the application return when an expected failure occurs?)

---

## ✨ Reviewer Checklist (Self-Review)

*   [ ] **Code Clarity:** Is the code readable? Are variable names descriptive?
*   [ ] **Testing:** Are there sufficient tests (unit, integration, end-to-end) to cover the new logic?
*   [ ] **Error Handling:** Is all expected error handling (try/catch, validation) in place?
*   [ ] **Documentation:** Have I updated any necessary documentation (READMEs, API docs)?
*   [ ] **Performance:** Have I considered potential performance bottlenecks (N+1 queries, large loop complexity)?
*   [ ] **Dependencies:** Have I added or updated any dependencies (`package.json`, `requirements.txt`) and confirmed they are necessary?

---

## 🤖 Automated Checks (For CI/CD Reviewers)

*   **Status Checks:**
    *   [ ] Build passes: (CI Build Name)
    *   [ ] Unit Tests pass: (CI Test Name)
    *   [ ] Linting passes: (CI Lint Name)
    *   [ ] Security Scans pass: (CI Security Name)

---

*Thank you for your review! Please provide feedback on the logic, implementation, and test coverage.*