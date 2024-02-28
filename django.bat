/* CHANGELISTS */

#changelist {
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
}

#changelist .changelist-form-container {
    flex: 1 1 auto;
    min-width: 0;
}

#changelist table {
    width: 100%;
}

.change-list .hiddenfields { display:none; }

.change-list .filtered table {
    border-right: none;
}

.change-list .filtered {
    min-height: 400px;
}

.change-list .filtered .results, .change-list .filtered .paginator,
.filtered #toolbar, .filtered div.xfull {
    width: auto;
}

.change-list .filtered table tbody th {
    padding-right: 1em;
}

#changelist-form .results {
    overflow-x: auto;
    width: 100%;
}

#changelist .toplinks {
    border-bottom: 1px solid var(--hairline-color);
}

#changelist .paginator {
    color: var(--body-quiet-color);
    border-bottom: 1px solid var(--hairline-color);
    background: var(--body-bg);
    overflow: hidden;
}

/* CHANGELIST TABLES */

#changelist table thead th {
    padding: 0;
    white-space: nowrap;
    vertical-align: middle;
}

#changelist table thead th.action-checkbox-column {
    width: 1.5em;
    text-align: center;
}

#changelist table tbody td.action-checkbox {
    text-align: center;
}

#changelist table tfoot {
    color: var(--body-quiet-color);
}

/* TOOLBAR */

#toolbar {
    padding: 8px 10px;
    margin-bottom: 15px;
    border-top: 1px solid var(--hairline-color);
    border-bottom: 1px solid var(--hairline-color);
    background: var(--darkened-bg);
    color: var(--body-quiet-color);
}

#toolbar form input {
    border-radius: 4px;
    font-size: 0.875rem;
    padding: 5px;
    color: var(--body-fg);
}

#toolbar #searchbar {
    height: 1.1875rem;
    border: 1px solid var(--border-color);
    padding: 2px 5px;
    margin: 0;
    vertical-align: top;
    font-size: 0.8125rem;
    max-width: 100%;
}

#toolbar #searchbar:focus {
    border-color: var(--body-quiet-color);
}

#toolbar form input[type="submit"] {
    border: 1px solid var(--border-color);
    font-size: 0.8125rem;
    padding: 4px 8px;
    margin: 0;
    vertical-align: middle;
    background: var(--body-bg);
    box-shadow: 0 -15px 20px -10px rgba(0, 0, 0, 0.15) inset;
    cursor: pointer;
    color: var(--body-fg);
}

#toolbar form input[type="submit"]:focus,
#toolbar form input[type="submit"]:hover {
    border-color: var(--body-quiet-color);
}

#changelist-search img {
    vertical-align: middle;
    margin-right: 4px;
}

#changelist-search .help {
    word-break: break-word;
}

/* FILTER COLUMN */

#changelist-filter {
    flex: 0 0 240px;
    order: 1;
    background: var(--darkened-bg);
    border-left: none;
    margin: 0 0 0 30px;
}

#changelist-filter h2 {
    font-size: 0.875rem;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    padding: 5px 15px;
    margin-bottom: 12px;
    border-bottom: none;
}

#changelist-filter h3,
#changelist-filter details summary {
    font-weight: 400;
    padding: 0 15px;
    margin-bottom: 10px;
    cursor: pointer;
}

#changelist-filter details summary > * {
    display: inline;
}

#changelist-filter details > summary {
    list-style-type: none;
}

#changelist-filter details > summary::-webkit-details-marker {
    display: none;
}

#changelist-filter details > summary::before {
    content: '→';
    font-weight: bold;
    color: var(--link-hover-color);
}

#changelist-filter details[open] > summary::before {
    content: '↓';
}

#changelist-filter ul {
    margin: 5px 0;
    padding: 0 15px 15px;
    border-bottom: 1px solid var(--hairline-color);
}

#changelist-filter ul:last-child {
    border-bottom: none;
}

#changelist-filter li {
    list-style-type: none;
    margin-left: 0;
    padding-left: 0;
}

#changelist-filter a {
    display: block;
    color: var(--body-quiet-color);
    word-break: break-word;
}

#changelist-filter li.selected {
    border-left: 5px solid var(--hairline-color);
    padding-left: 10px;
    margin-left: -15px;
}

#changelist-filter li.selected a {
    color: var(--link-selected-fg);
}

#changelist-filter a:focus, #changelist-filter a:hover,
#changelist-filter li.selected a:focus,
#changelist-filter li.selected a:hover {
    color: var(--link-hover-color);
}

#changelist-filter #changelist-filter-extra-actions {
    font-size: 0.8125rem;
    margin-bottom: 10px;
    border-bottom: 1px solid var(--hairline-color);
}

/* DATE DRILLDOWN */

.change-list .toplinks {
    display: flex;
    padding-bottom: 5px;
    flex-wrap: wrap;
    gap: 3px 17px;
    font-weight: bold;
}

.change-list .toplinks a {
    font-size: 0.8125rem;
}

.change-list .toplinks .date-back {
    color: var(--body-quiet-color);
}

.change-list .toplinks .date-back:focus,
.change-list .toplinks .date-back:hover {
    color: var(--link-hover-color);
}

/* ACTIONS */

.filtered .actions {
    border-right: none;
}

#changelist table input {
    margin: 0;
    vertical-align: baseline;
}

/* Once the :has() pseudo-class is supported by all browsers, the tr.selected
   selector and the JS adding the class can be removed. */
#changelist tbody tr.selected {
    background-color: var(--selected-row);
}

#changelist tbody tr:has(.action-select:checked) {
    background-color: var(--selected-row);
}

@media (forced-colors: active) {
    #changelist tbody tr.selected {
        background-color: SelectedItem;
    }
    #changelist tbody tr:has(.action-select:checked) {
        background-color: SelectedItem;
    }
}

#changelist .actions {
    padding: 10px;
    background: var(--body-bg);
    border-top: none;
    border-bottom: none;
    line-height: 1.5rem;
    color: var(--body-quiet-color);
    width: 100%;
}

#changelist .actions span.all,
#changelist .actions span.action-counter,
#changelist .actions span.clear,
#changelist .actions span.question {
    font-size: 0.8125rem;
    margin: 0 0.5em;
}

#changelist .actions:last-child {
    border-bottom: none;
}

#changelist .actions select {
    vertical-align: top;
    height: 1.5rem;
    color: var(--body-fg);
    border: 1px solid var(--border-color);
    border-radius: 4px;
    font-size: 0.875rem;
    padding: 0 0 0 4px;
    margin: 0;
    margin-left: 10px;
}

#changelist .actions select:focus {
    border-color: var(--body-quiet-color);
}

#changelist .actions label {
    display: inline-block;
    vertical-align: middle;
    font-size: 0.8125rem;
}

#changelist .actions .button {
    font-size: 0.8125rem;
    border: 1px solid var(--border-color);
    border-radius: 4px;
    background: var(--body-bg);
    box-shadow: 0 -15px 20px -10px rgba(0, 0, 0, 0.15) inset;
    cursor: pointer;
    height: 1.5rem;
    line-height: 1;
    padding: 4px 8px;
    margin: 0;
    color: var(--body-fg);
}

#changelist .actions .button:focus, #changelist .actions .button:hover {
    border-color: var(--body-quiet-color);
}
