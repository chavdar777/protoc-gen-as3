// vim: tabstop=4 shiftwidth=4

// Copyright (c) 2011 , Yang Bo All rights reserved.
//
// Author: Yang Bo (pop.atry@gmail.com)
//
// Use, modification and distribution are subject to the "New BSD License"
// as listed at <url: http://www.opensource.org/licenses/bsd-license.php >.

package com.netease.protobuf.fieldDescriptors {
	import com.netease.protobuf.*
	import flash.utils.*
	/**
	 * @private
	 */
	public final class RepeatedFieldDescriptor$TYPE_FLOAT extends
			RepeatedFieldDescriptor {
		public function RepeatedFieldDescriptor$TYPE_FLOAT(
				fullName:String, name:String, tag:uint) {
			this.fullName = fullName
			this.name = name
			this.tag = tag
		}
		override public function get nonPackedWireType():int {
			return WireType.FIXED_32_BIT
		}
		override public function get type():Class {
			return Array
		}
		override public function get elementType():Class {
			return Number
		}
		override public function readSingleField(input:IDataInput):* {
			return ReadUtils.read$TYPE_FLOAT(input)
		}
		override public function writeSingleField(output:WritingBuffer,
				value:*):void {
			WriteUtils.write$TYPE_FLOAT(output, value)
		}
	}
}
