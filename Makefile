command_path=./Command
port_number=4000
book_url=http://localhost
publish:
	@echo "Publish the GitBook!"
	sh $(command_path)/publish.sh
book:
	@echo "[Step 1] install plugins"
	gitbook install
	@echo "[Step 2] initialize:"
	gitbook init
	@echo "[Step 3] launch a serve"
	gitbook serve --port $(port_number) &
	@echo "[Step 4] open the url"
	open $(book_url):$(port_number)
open:
	@echo "open the url"
	open $(book_url):$(port_number)