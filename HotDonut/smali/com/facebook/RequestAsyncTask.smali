.class public Lcom/facebook/RequestAsyncTask;
.super Landroid/os/AsyncTask;
.source "RequestAsyncTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List",
        "<",
        "Lcom/facebook/Response;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private exception:Ljava/lang/Exception;

.field private final requests:Lcom/facebook/RequestBatch;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/facebook/RequestAsyncTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/facebook/RequestBatch;)V
    .locals 1
    .param p1, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V
    .locals 0
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    .line 108
    iput-object p1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Ljava/util/Collection;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 95
    return-void
.end method

.method public varargs constructor <init>(Ljava/net/HttpURLConnection;[Lcom/facebook/Request;)V
    .locals 1
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 81
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p2}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/RequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 59
    return-void
.end method

.method public varargs constructor <init>([Lcom/facebook/Request;)V
    .locals 2
    .param p1, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 48
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/RequestBatch;

    invoke-direct {v1, p1}, Lcom/facebook/RequestBatch;-><init>([Lcom/facebook/Request;)V

    invoke-direct {p0, v0, v1}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/List;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    iget-object v2, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-static {v1, v2}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/RequestAsyncTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/facebook/RequestAsyncTask;->TAG:Ljava/lang/String;

    const-string v1, "onPostExecute: exception encountered during request: "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/RequestAsyncTask;->exception:Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 123
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 125
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 129
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{RequestAsyncTask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string v1, ", requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/RequestAsyncTask;->requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    return-object v0
.end method
