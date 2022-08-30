Class {
	#name : #BaselineOfWodenRoassal,
	#superclass : #BaselineOf,
	#category : #BaselineOfWodenRoassal
}

{ #category : #baselines }
BaselineOfWodenRoassal >> baseline: spec [
    <baseline>
	spec for: #'common' do: [
		spec
			baseline: #'WodenGameFramework' with: [ spec repository: 'github://desromech/woden-core-game-framework' ];
			package: #'WodenRoassal-Core' with: [
				spec requires: #( #'WodenGameFramework' ).
			];
			package: #'WodenRoassal-Tests' with: [
				spec requires: #( #'WodenRoassal-Core' ).
			]
	].

]
