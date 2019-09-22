clean:
	git clean -xdf

deploy:
	git subtree push --prefix Assets/Plugins/CandyCoded.Unity-iOS-Bridge origin upm

deploy-force:
	git push origin `git subtree split --prefix Assets/Plugins/CandyCoded.Unity-iOS-Bridge master`:upm --force
