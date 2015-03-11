/**
 * Copyright (c) 2000-2013 Liferay, Inc. All rights reserved.
 *
 * This library is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Lesser General Public License as published by the Free
 * Software Foundation; either version 2.1 of the License, or (at your option)
 * any later version.
 *
 * This library is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public License for more
 * details.
 */

package com.liferay.nativity.modules.fileicon.unix;

import com.liferay.nativity.Constants;
import com.liferay.nativity.control.NativityControl;
import com.liferay.nativity.control.NativityMessage;
import com.liferay.nativity.modules.fileicon.FileIconControlCallback;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/**
 * @author Dennis Ju
 */
public class LinuxFileIconControlImpl extends UnixFileIconControlBaseImpl {

	public LinuxFileIconControlImpl(
		NativityControl nativityControl,
		FileIconControlCallback fileIconControlCallback) {

		super(nativityControl, fileIconControlCallback);
	}

	@Override
	public void disableFileIcons() {
		NativityMessage message = new NativityMessage(
			Constants.ENABLE_FILE_ICONS, Boolean.FALSE);

		nativityControl.sendMessage(message);
	}

	@Override
	public void enableFileIcons() {
		NativityMessage message = new NativityMessage(
			Constants.ENABLE_FILE_ICONS, Boolean.TRUE);

		nativityControl.sendMessage(message);
	}

	@Override
	public void refreshIcons() {
	}

}