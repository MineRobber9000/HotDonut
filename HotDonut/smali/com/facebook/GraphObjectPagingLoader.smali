.class Lcom/facebook/GraphObjectPagingLoader;
.super Landroid/support/v4/content/Loader;
.source "GraphObjectPagingLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;,
        Lcom/facebook/GraphObjectPagingLoader$PagedResults;,
        Lcom/facebook/GraphObjectPagingLoader$PagingInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/GraphObject;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<",
        "Lcom/facebook/SimpleGraphObjectCursor",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field private appendResults:Z

.field private currentRequest:Lcom/facebook/Request;

.field private cursor:Lcom/facebook/SimpleGraphObjectCursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private loading:Z

.field private nextLink:Ljava/lang/String;

.field private onErrorListener:Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;

.field private originalRequest:Lcom/facebook/Request;

.field private skipRoundtripIfCached:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    .local p2, "graphObjectClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 36
    iput-boolean v0, p0, Lcom/facebook/GraphObjectPagingLoader;->appendResults:Z

    .line 37
    iput-boolean v0, p0, Lcom/facebook/GraphObjectPagingLoader;->loading:Z

    .line 46
    iput-object p2, p0, Lcom/facebook/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    .line 47
    return-void
.end method

.method static synthetic access$1(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/Response;)V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/facebook/GraphObjectPagingLoader;->requestCompleted(Lcom/facebook/Response;)V

    return-void
.end method

.method private addResults(Lcom/facebook/GraphObjectPagingLoader$PagedResults;Z)V
    .locals 8
    .param p2, "fromCache"    # Z

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    .local p1, "result":Lcom/facebook/GraphObjectPagingLoader$PagedResults;, "Lcom/facebook/GraphObjectPagingLoader$PagedResults;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 212
    iget-object v6, p0, Lcom/facebook/GraphObjectPagingLoader;->cursor:Lcom/facebook/SimpleGraphObjectCursor;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/facebook/GraphObjectPagingLoader;->appendResults:Z

    if-nez v6, :cond_3

    :cond_0
    new-instance v0, Lcom/facebook/SimpleGraphObjectCursor;

    invoke-direct {v0}, Lcom/facebook/SimpleGraphObjectCursor;-><init>()V

    .line 215
    .local v0, "cursorToModify":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    :goto_0
    invoke-interface {p1}, Lcom/facebook/GraphObjectPagingLoader$PagedResults;->getData()Lcom/facebook/GraphObjectList;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/GraphObjectPagingLoader;->graphObjectClass:Ljava/lang/Class;

    invoke-interface {v6, v7}, Lcom/facebook/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/GraphObjectList;

    move-result-object v1

    .line 216
    .local v1, "data":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<TT;>;"
    invoke-interface {v1}, Lcom/facebook/GraphObjectList;->size()I

    move-result v6

    if-lez v6, :cond_4

    move v2, v4

    .line 218
    .local v2, "haveData":Z
    :goto_1
    if-eqz v2, :cond_1

    .line 219
    invoke-interface {p1}, Lcom/facebook/GraphObjectPagingLoader$PagedResults;->getPaging()Lcom/facebook/GraphObjectPagingLoader$PagingInfo;

    move-result-object v3

    .line 220
    .local v3, "paging":Lcom/facebook/GraphObjectPagingLoader$PagingInfo;, "Lcom/facebook/GraphObjectPagingLoader$PagingInfo;"
    iget-object v6, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    invoke-interface {v3}, Lcom/facebook/GraphObjectPagingLoader$PagingInfo;->getNext()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 223
    const/4 v2, 0x0

    .line 231
    .end local v3    # "paging":Lcom/facebook/GraphObjectPagingLoader$PagingInfo;, "Lcom/facebook/GraphObjectPagingLoader$PagingInfo;"
    :cond_1
    :goto_2
    if-nez v2, :cond_2

    .line 232
    invoke-virtual {v0, v5}, Lcom/facebook/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    .line 233
    invoke-virtual {v0, p2}, Lcom/facebook/SimpleGraphObjectCursor;->setFromCache(Z)V

    .line 235
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    .line 238
    :cond_2
    invoke-virtual {p0, v0}, Lcom/facebook/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/SimpleGraphObjectCursor;)V

    .line 239
    return-void

    .line 213
    .end local v0    # "cursorToModify":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    .end local v1    # "data":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<TT;>;"
    .end local v2    # "haveData":Z
    :cond_3
    new-instance v0, Lcom/facebook/SimpleGraphObjectCursor;

    iget-object v6, p0, Lcom/facebook/GraphObjectPagingLoader;->cursor:Lcom/facebook/SimpleGraphObjectCursor;

    invoke-direct {v0, v6}, Lcom/facebook/SimpleGraphObjectCursor;-><init>(Lcom/facebook/SimpleGraphObjectCursor;)V

    goto :goto_0

    .restart local v0    # "cursorToModify":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    .restart local v1    # "data":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<TT;>;"
    :cond_4
    move v2, v5

    .line 216
    goto :goto_1

    .line 225
    .restart local v2    # "haveData":Z
    .restart local v3    # "paging":Lcom/facebook/GraphObjectPagingLoader$PagingInfo;, "Lcom/facebook/GraphObjectPagingLoader$PagingInfo;"
    :cond_5
    invoke-interface {v3}, Lcom/facebook/GraphObjectPagingLoader$PagingInfo;->getNext()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    .line 227
    invoke-virtual {v0, v1, p2}, Lcom/facebook/SimpleGraphObjectCursor;->addGraphObjects(Ljava/util/Collection;Z)V

    .line 228
    invoke-virtual {v0, v4}, Lcom/facebook/SimpleGraphObjectCursor;->setMoreObjectsAvailable(Z)V

    goto :goto_2
.end method

.method private putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/RequestBatch;
    .locals 5
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "skipRoundtripIfCached"    # Z

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 169
    new-instance v0, Lcom/facebook/RequestBatch;

    new-array v4, v3, [Lcom/facebook/Request;

    aput-object p1, v4, v2

    invoke-direct {v0, v4}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    .line 171
    .local v0, "batch":Lcom/facebook/RequestBatch;
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/RequestBatch;->setCacheKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/facebook/RequestBatch;->setForceRoundTrip(Z)V

    .line 176
    return-object v0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    move v2, v3

    .line 175
    goto :goto_0
.end method

.method private requestCompleted(Lcom/facebook/Response;)V
    .locals 7
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 180
    invoke-virtual {p1}, Lcom/facebook/Response;->getRequest()Lcom/facebook/Request;

    move-result-object v2

    .line 181
    .local v2, "request":Lcom/facebook/Request;
    iget-object v4, p0, Lcom/facebook/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    if-eq v2, v4, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iput-boolean v5, p0, Lcom/facebook/GraphObjectPagingLoader;->loading:Z

    .line 186
    iput-object v6, p0, Lcom/facebook/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 188
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookException;

    move-result-object v0

    .line 189
    .local v0, "error":Lcom/facebook/FacebookException;
    const-class v4, Lcom/facebook/GraphObjectPagingLoader$PagedResults;

    invoke-virtual {p1, v4}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/GraphObject;

    move-result-object v3

    check-cast v3, Lcom/facebook/GraphObjectPagingLoader$PagedResults;

    .line 190
    .local v3, "result":Lcom/facebook/GraphObjectPagingLoader$PagedResults;, "Lcom/facebook/GraphObjectPagingLoader$PagedResults;"
    if-nez v3, :cond_2

    if-nez v0, :cond_2

    .line 191
    new-instance v0, Lcom/facebook/FacebookException;

    .end local v0    # "error":Lcom/facebook/FacebookException;
    const-string v4, "GraphObjectPagingLoader received neither a result nor an error."

    invoke-direct {v0, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v0    # "error":Lcom/facebook/FacebookException;
    :cond_2
    if-eqz v0, :cond_3

    .line 195
    iput-object v6, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    .line 197
    iget-object v4, p0, Lcom/facebook/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;

    if-eqz v4, :cond_0

    .line 198
    iget-object v4, p0, Lcom/facebook/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;

    invoke-interface {v4, v0, p0}, Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;->onError(Lcom/facebook/FacebookException;Lcom/facebook/GraphObjectPagingLoader;)V

    goto :goto_0

    .line 201
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/Response;->getIsFromCache()Z

    move-result v1

    .line 202
    .local v1, "fromCache":Z
    invoke-direct {p0, v3, v1}, Lcom/facebook/GraphObjectPagingLoader;->addResults(Lcom/facebook/GraphObjectPagingLoader$PagedResults;Z)V

    .line 205
    if-nez v1, :cond_0

    .line 206
    iput-boolean v5, p0, Lcom/facebook/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    goto :goto_0
.end method

.method private startLoading(Lcom/facebook/Request;ZJ)V
    .locals 5
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "skipRoundtripIfCached"    # Z
    .param p3, "afterDelay"    # J

    .prologue
    .line 138
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    iput-boolean p2, p0, Lcom/facebook/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    .line 139
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/facebook/GraphObjectPagingLoader;->appendResults:Z

    .line 140
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    .line 141
    iput-object p1, p0, Lcom/facebook/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 142
    iget-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    new-instance v4, Lcom/facebook/GraphObjectPagingLoader$2;

    invoke-direct {v4, p0}, Lcom/facebook/GraphObjectPagingLoader$2;-><init>(Lcom/facebook/GraphObjectPagingLoader;)V

    invoke-virtual {v3, v4}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    .line 150
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/facebook/GraphObjectPagingLoader;->loading:Z

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/facebook/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/RequestBatch;

    move-result-object v0

    .line 153
    .local v0, "batch":Lcom/facebook/RequestBatch;
    new-instance v2, Lcom/facebook/GraphObjectPagingLoader$3;

    invoke-direct {v2, p0, v0}, Lcom/facebook/GraphObjectPagingLoader$3;-><init>(Lcom/facebook/GraphObjectPagingLoader;Lcom/facebook/RequestBatch;)V

    .line 159
    .local v2, "r":Ljava/lang/Runnable;
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-nez v3, :cond_0

    .line 160
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 163
    .local v1, "handler":Landroid/os/Handler;
    invoke-virtual {v1, v2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public clearResults()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    .line 64
    iput-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 66
    invoke-virtual {p0, v0}, Lcom/facebook/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/SimpleGraphObjectCursor;)V

    .line 67
    return-void
.end method

.method public deliverResult(Lcom/facebook/SimpleGraphObjectCursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    .local p1, "cursor":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->cursor:Lcom/facebook/SimpleGraphObjectCursor;

    .line 117
    .local v0, "oldCursor":Lcom/facebook/SimpleGraphObjectCursor;, "Lcom/facebook/SimpleGraphObjectCursor<TT;>;"
    iput-object p1, p0, Lcom/facebook/GraphObjectPagingLoader;->cursor:Lcom/facebook/SimpleGraphObjectCursor;

    .line 119
    invoke-virtual {p0}, Lcom/facebook/GraphObjectPagingLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroid/support/v4/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 122
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/SimpleGraphObjectCursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/facebook/SimpleGraphObjectCursor;->close()V

    .line 126
    :cond_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/SimpleGraphObjectCursor;

    invoke-virtual {p0, p1}, Lcom/facebook/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/SimpleGraphObjectCursor;)V

    return-void
.end method

.method public followNextLink()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    const/4 v6, 0x1

    .line 87
    iget-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 88
    iput-boolean v6, p0, Lcom/facebook/GraphObjectPagingLoader;->appendResults:Z

    .line 89
    iget-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    invoke-virtual {v3}, Lcom/facebook/Request;->getSession()Lcom/facebook/Session;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/GraphObjectPagingLoader$1;

    invoke-direct {v5, p0}, Lcom/facebook/GraphObjectPagingLoader$1;-><init>(Lcom/facebook/GraphObjectPagingLoader;)V

    invoke-static {v3, v4, v5}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    iput-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    .line 97
    const/4 v1, 0x0

    .line 99
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    iput-boolean v6, p0, Lcom/facebook/GraphObjectPagingLoader;->loading:Z

    .line 108
    iget-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->currentRequest:Lcom/facebook/Request;

    iget-boolean v4, p0, Lcom/facebook/GraphObjectPagingLoader;->skipRoundtripIfCached:Z

    invoke-direct {p0, v3, v4}, Lcom/facebook/GraphObjectPagingLoader;->putRequestIntoBatch(Lcom/facebook/Request;Z)Lcom/facebook/RequestBatch;

    move-result-object v0

    .line 109
    .local v0, "batch":Lcom/facebook/RequestBatch;
    iget-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->nextLink:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/facebook/RequestBatch;->setCacheKey(Ljava/lang/String;)V

    .line 110
    invoke-static {v1, v0}, Lcom/facebook/Request;->executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    .line 112
    .end local v0    # "batch":Lcom/facebook/RequestBatch;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;

    if-eqz v3, :cond_0

    .line 102
    iget-object v3, p0, Lcom/facebook/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;

    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v3, v4, p0}, Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;->onError(Lcom/facebook/FacebookException;Lcom/facebook/GraphObjectPagingLoader;)V

    goto :goto_0
.end method

.method public getCursor()Lcom/facebook/SimpleGraphObjectCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/SimpleGraphObjectCursor",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->cursor:Lcom/facebook/SimpleGraphObjectCursor;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .prologue
    .line 70
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    iget-boolean v0, p0, Lcom/facebook/GraphObjectPagingLoader;->loading:Z

    return v0
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onStartLoading()V

    .line 132
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->cursor:Lcom/facebook/SimpleGraphObjectCursor;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->cursor:Lcom/facebook/SimpleGraphObjectCursor;

    invoke-virtual {p0, v0}, Lcom/facebook/GraphObjectPagingLoader;->deliverResult(Lcom/facebook/SimpleGraphObjectCursor;)V

    .line 135
    :cond_0
    return-void
.end method

.method public refreshOriginalRequest(J)V
    .locals 2
    .param p1, "afterDelay"    # J

    .prologue
    .line 79
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/facebook/FacebookException;

    .line 81
    const-string v1, "refreshOriginalRequest may not be called until after startLoading has been called."

    .line 80
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/facebook/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    .line 84
    return-void
.end method

.method public setOnErrorListener(Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;)V
    .locals 0

    .prologue
    .line 54
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    .local p1, "listener":Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;, "Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;"
    iput-object p1, p0, Lcom/facebook/GraphObjectPagingLoader;->onErrorListener:Lcom/facebook/GraphObjectPagingLoader$OnErrorListener;

    .line 55
    return-void
.end method

.method public startLoading(Lcom/facebook/Request;Z)V
    .locals 2
    .param p1, "request"    # Lcom/facebook/Request;
    .param p2, "skipRoundtripIfCached"    # Z

    .prologue
    .line 74
    .local p0, "this":Lcom/facebook/GraphObjectPagingLoader;, "Lcom/facebook/GraphObjectPagingLoader<TT;>;"
    iput-object p1, p0, Lcom/facebook/GraphObjectPagingLoader;->originalRequest:Lcom/facebook/Request;

    .line 75
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/GraphObjectPagingLoader;->startLoading(Lcom/facebook/Request;ZJ)V

    .line 76
    return-void
.end method
