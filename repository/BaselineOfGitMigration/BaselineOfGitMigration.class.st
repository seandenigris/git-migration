"
Baseline for https://github.com/pharo-contributions/git-migration
"
Class {
	#name : #BaselineOfGitMigration,
	#superclass : #BaselineOf,
	#category : 'BaselineOfGitMigration'
}

{ #category : #baselines }
BaselineOfGitMigration >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'GitFastWriter'
				with: [ spec repository: 'github://pharo-contributions/git-fast-writer/repository' ].
			spec package: 'GitMigration' with: [ spec requires: 'GitFastWriter' ].
			spec group: 'default' with: #('GitMigration') ]
]
