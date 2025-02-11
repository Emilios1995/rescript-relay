/* @sourceLoc Test_localPayload.res */
/* @generated */
%%raw("/* @generated */")
module Types = {
  @@ocaml.warning("-30")

  type rec fragment_memberOf_Group_topMember_User = {
    @live __typename: [ | #User],
    firstName: string,
  }
  and fragment_memberOf_Group = {
    @live __typename: [ | #Group],
    name: string,
    topMember: option<fragment_memberOf_Group_topMember>,
  }
  and fragment_memberOf_User = {
    @live __typename: [ | #User],
    firstName: string,
  }
  and fragment_memberOfSingular_Group = {
    @live __typename: [ | #Group],
    name: string,
  }
  and fragment_memberOfSingular_User = {
    @live __typename: [ | #User],
    firstName: string,
  }
  and fragment_memberOf_Group_topMember = [
    | #User(fragment_memberOf_Group_topMember_User)
    | #UnselectedUnionMember(string)
  ]

  and fragment_memberOf = [
    | #Group(fragment_memberOf_Group)
    | #User(fragment_memberOf_User)
    | #UnselectedUnionMember(string)
  ]

  and fragment_memberOfSingular = [
    | #Group(fragment_memberOfSingular_Group)
    | #User(fragment_memberOfSingular_User)
    | #UnselectedUnionMember(string)
  ]

  type fragment = {
    avatarUrl: option<string>,
    firstName: string,
    memberOf: option<array<option<fragment_memberOf>>>,
    memberOfSingular: option<fragment_memberOfSingular>,
  }
}

@live
let unwrap_fragment_memberOf_Group_topMember: {. "__typename": string } => [
  | #User(Types.fragment_memberOf_Group_topMember_User)
  | #UnselectedUnionMember(string)
] = u => switch u["__typename"] {
  | "User" => #User(u->Obj.magic)
  | v => #UnselectedUnionMember(v)
}

@live
let wrap_fragment_memberOf_Group_topMember: [
  | #User(Types.fragment_memberOf_Group_topMember_User)
  | #UnselectedUnionMember(string)
] => {. "__typename": string } = v => switch v {
  | #User(v) => v->Obj.magic
  | #UnselectedUnionMember(v) => {"__typename": v}
}
@live
let unwrap_fragment_memberOf: {. "__typename": string } => [
  | #Group(Types.fragment_memberOf_Group)
  | #User(Types.fragment_memberOf_User)
  | #UnselectedUnionMember(string)
] = u => switch u["__typename"] {
  | "Group" => #Group(u->Obj.magic)
  | "User" => #User(u->Obj.magic)
  | v => #UnselectedUnionMember(v)
}

@live
let wrap_fragment_memberOf: [
  | #Group(Types.fragment_memberOf_Group)
  | #User(Types.fragment_memberOf_User)
  | #UnselectedUnionMember(string)
] => {. "__typename": string } = v => switch v {
  | #Group(v) => v->Obj.magic
  | #User(v) => v->Obj.magic
  | #UnselectedUnionMember(v) => {"__typename": v}
}
@live
let unwrap_fragment_memberOfSingular: {. "__typename": string } => [
  | #Group(Types.fragment_memberOfSingular_Group)
  | #User(Types.fragment_memberOfSingular_User)
  | #UnselectedUnionMember(string)
] = u => switch u["__typename"] {
  | "Group" => #Group(u->Obj.magic)
  | "User" => #User(u->Obj.magic)
  | v => #UnselectedUnionMember(v)
}

@live
let wrap_fragment_memberOfSingular: [
  | #Group(Types.fragment_memberOfSingular_Group)
  | #User(Types.fragment_memberOfSingular_User)
  | #UnselectedUnionMember(string)
] => {. "__typename": string } = v => switch v {
  | #Group(v) => v->Obj.magic
  | #User(v) => v->Obj.magic
  | #UnselectedUnionMember(v) => {"__typename": v}
}
module Internal = {
  @live
  type fragmentRaw
  @live
  let fragmentConverter: Js.Dict.t<Js.Dict.t<Js.Dict.t<string>>> = %raw(
    json`{"__root":{"memberOf_Group_topMember":{"u":"fragment_memberOf_Group_topMember"},"memberOfSingular":{"u":"fragment_memberOfSingular"},"memberOf":{"u":"fragment_memberOf"}}}`
  )
  @live
  let fragmentConverterMap = {
    "fragment_memberOf_Group_topMember": unwrap_fragment_memberOf_Group_topMember,
    "fragment_memberOf": unwrap_fragment_memberOf,
    "fragment_memberOfSingular": unwrap_fragment_memberOfSingular,
  }
  @live
  let convertFragment = v => v->RescriptRelay.convertObj(
    fragmentConverter,
    fragmentConverterMap,
    Js.undefined
  )
}

type t
type fragmentRef
external getFragmentRef:
  RescriptRelay.fragmentRefs<[> | #TestLocalPayload_user]> => fragmentRef = "%identity"

module Utils = {
  @@ocaml.warning("-33")
  open Types
}

type relayOperationNode
type operationType = RescriptRelay.fragmentNode<relayOperationNode>


let node: operationType = %raw(json` (function(){
var v0 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "firstName",
  "storageKey": null
},
v1 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "__typename",
  "storageKey": null
},
v2 = {
  "alias": null,
  "args": null,
  "kind": "ScalarField",
  "name": "name",
  "storageKey": null
},
v3 = {
  "kind": "InlineFragment",
  "selections": [
    (v0/*: any*/)
  ],
  "type": "User",
  "abstractKey": null
};
return {
  "argumentDefinitions": [],
  "kind": "Fragment",
  "metadata": null,
  "name": "TestLocalPayload_user",
  "selections": [
    (v0/*: any*/),
    {
      "alias": null,
      "args": null,
      "kind": "ScalarField",
      "name": "avatarUrl",
      "storageKey": null
    },
    {
      "alias": null,
      "args": null,
      "concreteType": null,
      "kind": "LinkedField",
      "name": "memberOf",
      "plural": true,
      "selections": [
        (v1/*: any*/),
        {
          "kind": "InlineFragment",
          "selections": [
            (v2/*: any*/),
            {
              "alias": null,
              "args": null,
              "concreteType": null,
              "kind": "LinkedField",
              "name": "topMember",
              "plural": false,
              "selections": [
                (v1/*: any*/),
                (v3/*: any*/)
              ],
              "storageKey": null
            }
          ],
          "type": "Group",
          "abstractKey": null
        },
        (v3/*: any*/)
      ],
      "storageKey": null
    },
    {
      "alias": null,
      "args": null,
      "concreteType": null,
      "kind": "LinkedField",
      "name": "memberOfSingular",
      "plural": false,
      "selections": [
        (v1/*: any*/),
        {
          "kind": "InlineFragment",
          "selections": [
            (v2/*: any*/)
          ],
          "type": "Group",
          "abstractKey": null
        },
        (v3/*: any*/)
      ],
      "storageKey": null
    }
  ],
  "type": "User",
  "abstractKey": null
};
})() `)

