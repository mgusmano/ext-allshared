import Ext{Xtype} from '../src/ext-{xtype}.component.js';
import {
    Host,
    Optional,
    SkipSelf,
    Component,
    ElementRef,
    forwardRef,
    ViewContainerRef
  } from '@angular/core';
import EngBase from './angularbase';

//var events = (new Ext{Xtype}()).eventnames;
//var eventnamesall = [];
//events.forEach( (event: any, n: any) => {
//    eventnamesall.push(event.name)
//})
//const distinct = (value, index, self) => {
//    //return true
//    return self.indexOf(value) === index;
//}
//var eventnames = eventnamesall.filter(distinct);

@Component({
    selector: 'Ext{Xtype}',
    inputs: (new Ext{Xtype}()).properties,
    outputs: (new Ext{Xtype}()).eventnames,
    providers: [{provide: EngBase, useExisting: forwardRef(() => Ext{Xtype}Component)}],
    template: '<ng-content></ng-content>'
})
export default class Ext{Xtype}Component extends EngBase {
    constructor(
        eRef: ElementRef,
        @Host() @Optional() @SkipSelf() hostComponent: EngBase,
        vc: ViewContainerRef
        ) {
        super(
            eRef,
            hostComponent,
            (new Ext{Xtype}()).properties,
            (new Ext{Xtype}()).events,
            (new Ext{Xtype}()).eventnames,
            vc
        )
        this.xtype = '{xtype}'
    }

    public ngOnInit() {
        this.baseOnInit()
    }

    public ngAfterViewInit() {
        this.baseAfterViewInit()
    }

    public ngOnChanges(changes) {
        this.baseOnChanges(changes)
    }

    public ngOnDestroy() {
        this.baseOnDestroy()
    }
}


// function toPascalCase(s) {
//     return s.match(/[a-z]+/gi)
//         .map(function (word) {
//             return word.charAt(0).toUpperCase() + word.substr(1).toLowerCase()
//         })
//         .join('')
// }
// var pascalName = toPascalCase(tagName)
