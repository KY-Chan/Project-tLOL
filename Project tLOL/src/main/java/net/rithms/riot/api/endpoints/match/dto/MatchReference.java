/*
 * Copyright 2014 Taylor Caldwell
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package net.rithms.riot.api.endpoints.match.dto;

import java.io.Serializable;

import net.rithms.riot.api.Dto;

public class MatchReference extends Dto implements Serializable {

	private static final long serialVersionUID = 3975874858170021162L;

	private int champion;
	private long gameId;
	private String lane;
	private String platformId;
	private int queue;
	private String role;
	private int season;
	private long timestamp;

	public int getChampion() {
		return champion;
	}

	public long getGameId() {
		return gameId;
	}

	public String getLane() {
		return lane;
	}

	public String getPlatformId() {
		return platformId;
	}

	public int getQueue() {
		return queue;
	}

	public String getRole() {
		return role;
	}

	public int getSeason() {
		return season;
	}

	public long getTimestamp() {
		return timestamp;
	}

	@Override
	public String toString() {
		return String.valueOf(getGameId());
	}
}