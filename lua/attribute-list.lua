return {
{ label = 'hx-post', insertText = 'hx-post=""', filterText = 'hx-post', documentation = 'The `hx-post` attribute will cause an element to issue a `POST` to the specified URL and swap\nthe HTML into the DOM using a swap strategy:' },
	{ label = 'hx-history', insertText = 'hx-history=""', filterText = 'hx-history', documentation = 'Set the `hx-history` attribute to `false` on any element in the current document, or any html fragment loaded into the current document by htmx, to prevent sensitive data being saved to the localStorage cache when htmx takes a snapshot of the page state. ' },
	{ label = 'hx-trigger', insertText = 'hx-trigger=""', filterText = 'hx-trigger', documentation = 'The `hx-trigger` attribute allows you to specify what triggers an AJAX request.  A trigger\nvalue can be one of the following:' },
	{ label = 'hx-vars', insertText = 'hx-vars=""', filterText = 'hx-vars', documentation = '**NOTE: `hx-vars` has been deprecated in favor of [`hx-vals`](@/attributes/hx-vals.md), which is safer by default.**' },
	{ label = 'hx-sse', insertText = 'hx-sse=""', filterText = 'hx-sse', documentation = '*Note: This attribute will be migrated to an extension in htmx 2.0, which is available now.  Please visit the\n[SSE extension page](@/extensions/server-sent-events.md) to learn about the new implementation of SSE as an extension.*' },
	{ label = 'hx-confirm', insertText = 'hx-confirm=""', filterText = 'hx-confirm', documentation = 'The `hx-confirm` attribute allows you to confirm an action before issuing a request.  This can be useful\nin cases where the action is destructive and you want to ensure that the user really wants to do it.' },
	{ label = 'hx-sync', insertText = 'hx-sync=""', filterText = 'hx-sync', documentation = 'The `hx-sync` attribute allows you to synchronize AJAX requests between multiple elements.' },
	{ label = 'hx-disinherit', insertText = 'hx-disinherit=""', filterText = 'hx-disinherit', documentation = 'The default behavior for htmx is to "inherit" many attributes automatically: that is, an attribute such as\n[hx-target](@/attributes/hx-target.md) may be placed on a parent element, and all child elements will inherit\nthat target.' },
	{ label = 'hx-encoding', insertText = 'hx-encoding=""', filterText = 'hx-encoding', documentation = 'The `hx-encoding` attribute allows you to switch the request encoding from the usual `application/x-www-form-urlencoded`\nencoding to `multipart/form-data`, usually to support file uploads in an ajax request.' },
	{ label = 'hx-params', insertText = 'hx-params=""', filterText = 'hx-params', documentation = 'The `hx-params` attribute allows you to filter the parameters that will be submitted with an AJAX request.  ' },
	{ label = 'hx-headers', insertText = 'hx-headers=""', filterText = 'hx-headers', documentation = 'The `hx-headers` attribute allows you to add to the headers that will be submitted with an AJAX request.  ' },
	{ label = 'hx-delete', insertText = 'hx-delete=""', filterText = 'hx-delete', documentation = 'The `hx-delete` attribute will cause an element to issue a `DELETE` to the specified URL and swap\nthe HTML into the DOM using a swap strategy:' },
	{ label = 'hx-history-elt', insertText = 'hx-history-elt=""', filterText = 'hx-history-elt', documentation = 'The `hx-history-elt` attribute allows you to specify the element that will be used to snapshot and\nrestore page state during navigation.  By default, the `body` tag is used.  This is typically\ngood enough for most setups, but you may want to narrow it down to a child element.  Just make\nsure that the element is always visible in your application, or htmx will not be able to restore\nhistory navigation properly.' },
	{ label = 'hx-on', insertText = 'hx-on=""', filterText = 'hx-on', documentation = 'The `hx-on` attribute allows you to embed scripts inline to respond to events directly on an element; similar to the [`onevent` properties](https://developer.mozilla.org/en-US/docs/Web/Events/Event_handlers#using_onevent_properties) found in HTML, such as `onClick`.' },
	{ label = 'hx-swap', insertText = 'hx-swap=""', filterText = 'hx-swap', documentation = 'The `hx-swap` attribute allows you to specify how the response will be swapped in relative to the\n[target](@/attributes/hx-target.md) of an AJAX request.' },
	{ label = 'hx-include', insertText = 'hx-include=""', filterText = 'hx-include', documentation = 'The `hx-include` attribute allows you to include additional element values in an AJAX request.  The value of\n this attribute is a CSS query selector of the element or elements to include in the query.' },
	{ label = 'hx-disable', insertText = 'hx-disable=""', filterText = 'hx-disable', documentation = 'The `hx-disable` attribute will disable htmx processing for a given element and all its children.  This can be \nuseful as a backup for HTML escaping, when you include user generated content in your site, and you want to \nprevent malicious scripting attacks.' },
	{ label = 'hx-replace-url', insertText = 'hx-replace-url=""', filterText = 'hx-replace-url', documentation = 'The `hx-replace-url` attribute allows you to replace the current url of the browser [location history](https://developer.mozilla.org/en-US/docs/Web/API/History_API).' },
	{ label = 'hx-put', insertText = 'hx-put=""', filterText = 'hx-put', documentation = 'The `hx-put` attribute will cause an element to issue a `PUT` to the specified URL and swap\nthe HTML into the DOM using a swap strategy:' },
	{ label = 'hx-push-url', insertText = 'hx-push-url=""', filterText = 'hx-push-url', documentation = 'The `hx-push-url` attribute allows you to push a URL into the browser [location history](https://developer.mozilla.org/en-US/docs/Web/API/History_API).\nThis creates a new history entry, allowing navigation with the browser’s back and forward buttons.\nhtmx snapshots the current DOM and saves it into its history cache, and restores from this cache on navigation.' },
	{ label = 'hx-indicator', insertText = 'hx-indicator=""', filterText = 'hx-indicator', documentation = 'The `hx-indicator` attribute allows you to specify the element that will have the `htmx-request` class\nadded to it for the duration of the request. This can be used to show spinners or progress indicators\nwhile the request is in flight.' },
	{ label = 'hx-target', insertText = 'hx-target=""', filterText = 'hx-target', documentation = 'The `hx-target` attribute allows you to target a different element for swapping than the one issuing the AJAX\nrequest.  The value of this attribute can be:' },
	{ label = 'hx-ws', insertText = 'hx-ws=""', filterText = 'hx-ws', documentation = '*Note: This attribute will be migrated to an extension in htmx 2.0, which is available now.  Please visit the \n[WebSockets extension page](@/extensions/web-sockets.md) to learn about the new implementation of Web Sockets as an extension.*' },
	{ label = 'hx-ext', insertText = 'hx-ext=""', filterText = 'hx-ext', documentation = 'The `hx-ext` attribute enables an htmx [extension](@/extensions/_index.md) for an element and all its children.' },
	{ label = 'hx-get', insertText = 'hx-get=""', filterText = 'hx-get', documentation = 'The `hx-get` attribute will cause an element to issue a `GET` to the specified URL and swap\nthe HTML into the DOM using a swap strategy:' },
	{ label = 'hx-boost', insertText = 'hx-boost=""', filterText = 'hx-boost', documentation = 'The `hx-boost` attribute allows you to "boost" normal anchors and form tags to use AJAX instead.  This\nhas the [nice fallback](https://en.wikipedia.org/wiki/Progressive_enhancement) that, if the user does not \nhave javascript enabled, the site will continue to work.' },
	{ label = 'hx-request', insertText = 'hx-request=""', filterText = 'hx-request', documentation = 'The `hx-request` attribute allows you to configure various aspects of the request via the following attributes:\n \n* `timeout` - the timeout for the request, in milliseconds\n* `credentials` - if the request will send credentials\n* `noHeaders` - strips all headers from the request' },
	{ label = 'hx-select-oob', insertText = 'hx-select-oob=""', filterText = 'hx-select-oob', documentation = 'The `hx-select-oob` attribute allows you to select content from a response to be swapped in via an out-of-band swap.  \nThe value of this attribute is comma separated list of elements to be swapped out of band.  This attribute is almost\nalways paired with [hx-select](@/attributes/hx-select.md).' },
	{ label = 'hx-validate', insertText = 'hx-validate=""', filterText = 'hx-validate', documentation = 'The `hx-validate` attribute will cause an element to validate itself by way of the [HTML5 Validation API](@/docs.md#validation)\nbefore it submits a request.' },
	{ label = 'hx-vals', insertText = 'hx-vals=""', filterText = 'hx-vals', documentation = 'The `hx-vals` attribute allows you to add to the parameters that will be submitted with an AJAX request.  ' },
	{ label = 'hx-patch', insertText = 'hx-patch=""', filterText = 'hx-patch', documentation = 'The `hx-patch` attribute will cause an element to issue a `PATCH` to the specified URL and swap\nthe HTML into the DOM using a swap strategy:' },
	{ label = 'hx-preserve', insertText = 'hx-preserve=""', filterText = 'hx-preserve', documentation = 'The `hx-preserve` attribute allows you to keep an element unchanged during HTML replacement.\nElements with `hx-preserve` set are preserved by `id` when htmx updates any ancestor element.\nYou *must* set an unchanging `id` on elements for `hx-preserve` to work.\nThe response requires an element with the same `id`, but its type and other attributes are ignored.' },
	{ label = 'hx-select', insertText = 'hx-select=""', filterText = 'hx-select', documentation = 'The `hx-select` attribute allows you to select the content you want swapped from a response.  The value of\nthis attribute is a CSS query selector of the element or elements to select from the response.' },
	{ label = 'hx-swap-oob', insertText = 'hx-swap-oob=""', filterText = 'hx-swap-oob', documentation = 'The `hx-swap-oob` attribute allows you to specify that some content in a response should be \nswapped into the DOM somewhere other than the target, that is "Out of Band".  This allows you to piggy back updates to other element updates on a response.' },
	{ label = 'hx-prompt', insertText = 'hx-prompt=""', filterText = 'hx-prompt', documentation = 'The `hx-prompt` attribute allows you to show a prompt before issuing a request.  The value of\nthe prompt will be included in the request in the `HX-Prompt` header.' }
}