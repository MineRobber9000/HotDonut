.class abstract Lcom/pubnub/api/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"


# static fields
.field private static _maxWorkers:I


# instance fields
.field protected _waiting:Ljava/util/Vector;

.field private _workers:[Lcom/pubnub/api/Worker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    sput v0, Lcom/pubnub/api/RequestManager;->_maxWorkers:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/pubnub/api/RequestManager;->_waiting:Ljava/util/Vector;

    .line 228
    invoke-static {}, Lcom/pubnub/api/RequestManager;->init()V

    .line 229
    sget v0, Lcom/pubnub/api/RequestManager;->_maxWorkers:I

    invoke-direct {p0, v0, p1}, Lcom/pubnub/api/RequestManager;->initManager(ILjava/lang/String;)V

    .line 230
    return-void
.end method

.method public static getWorkerCount()I
    .locals 1

    .prologue
    .line 204
    sget v0, Lcom/pubnub/api/RequestManager;->_maxWorkers:I

    return v0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method private initManager(ILjava/lang/String;)V
    .locals 3
    .param p1, "maxCalls"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 210
    const/4 v2, 0x1

    if-ge p1, v2, :cond_0

    .line 211
    const/4 p1, 0x1

    .line 213
    :cond_0
    new-array v2, p1, [Lcom/pubnub/api/Worker;

    iput-object v2, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/pubnub/api/RequestManager;->getWorker()Lcom/pubnub/api/Worker;

    move-result-object v1

    .line 217
    .local v1, "w":Lcom/pubnub/api/Worker;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/pubnub/api/Worker;->setThread(Ljava/lang/Thread;)V

    .line 218
    iget-object v2, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    aput-object v1, v2, v0

    .line 219
    invoke-virtual {v1}, Lcom/pubnub/api/Worker;->startWorker()V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v1    # "w":Lcom/pubnub/api/Worker;
    :cond_1
    return-void
.end method

.method private interruptWorkers()V
    .locals 2

    .prologue
    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/pubnub/api/Worker;->interruptWorker()V

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    return-void
.end method

.method private resetWorkersConnections()V
    .locals 2

    .prologue
    .line 239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/pubnub/api/Worker;->resetConnection()V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method public static setWorkerCount(I)V
    .locals 0
    .param p0, "count"    # I

    .prologue
    .line 273
    sput p0, Lcom/pubnub/api/RequestManager;->_maxWorkers:I

    .line 274
    return-void
.end method


# virtual methods
.method public abortClearAndQueue(Lcom/pubnub/http/HttpRequest;)V
    .locals 0
    .param p1, "hreq"    # Lcom/pubnub/http/HttpRequest;

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/pubnub/api/RequestManager;->resetHttpManager()V

    .line 262
    invoke-virtual {p0, p1}, Lcom/pubnub/api/RequestManager;->queue(Lcom/pubnub/http/HttpRequest;)V

    .line 263
    return-void
.end method

.method public clearRequestQueue()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/pubnub/api/RequestManager;->_waiting:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 252
    return-void
.end method

.method public abstract getWorker()Lcom/pubnub/api/Worker;
.end method

.method public queue(Lcom/pubnub/http/HttpRequest;)V
    .locals 2
    .param p1, "hreq"    # Lcom/pubnub/http/HttpRequest;

    .prologue
    .line 266
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_waiting:Ljava/util/Vector;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/pubnub/api/RequestManager;->_waiting:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/pubnub/api/RequestManager;->_waiting:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 269
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetHttpManager()V
    .locals 0

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/pubnub/api/RequestManager;->clearRequestQueue()V

    .line 257
    invoke-direct {p0}, Lcom/pubnub/api/RequestManager;->resetWorkersConnections()V

    .line 258
    return-void
.end method

.method public setConnectionTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/pubnub/api/Worker;->setConnectionTimeout(I)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    :cond_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 245
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Lcom/pubnub/api/Worker;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    return-void
.end method

.method public setRequestTimeout(I)V
    .locals 2
    .param p1, "timeout"    # I

    .prologue
    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/pubnub/api/Worker;->setRequestTimeout(I)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 286
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 289
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/pubnub/api/RequestManager;->_maxWorkers:I

    if-ge v0, v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/pubnub/api/RequestManager;->_workers:[Lcom/pubnub/api/Worker;

    aget-object v1, v2, v0

    .line 291
    .local v1, "w":Lcom/pubnub/api/Worker;
    invoke-virtual {v1}, Lcom/pubnub/api/Worker;->die()V

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "w":Lcom/pubnub/api/Worker;
    :cond_0
    return-void
.end method
