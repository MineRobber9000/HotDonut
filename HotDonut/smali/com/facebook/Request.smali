.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Request$Callback;,
        Lcom/facebook/Request$GraphPlaceListCallback;,
        Lcom/facebook/Request$GraphUserCallback;,
        Lcom/facebook/Request$GraphUserListCallback;,
        Lcom/facebook/Request$KeyValueSerializer;,
        Lcom/facebook/Request$Serializer;
    }
.end annotation


# static fields
.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIGRATION_BUNDLE_PARAM:Ljava/lang/String; = "migration_bundle"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_FEED:Ljava/lang/String; = "me/feed"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static final iso8601DateFormat:Ljava/text/SimpleDateFormat;

.field private static volatile userAgent:Ljava/lang/String;


# instance fields
.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/Request$Callback;

.field private graphObject:Lcom/facebook/GraphObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private parameters:Landroid/os/Bundle;

.field private restMethod:Ljava/lang/String;

.field private session:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/facebook/Request;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 116
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "graphPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 153
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
    .locals 3
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "graphPath"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "httpMethod"    # Lcom/facebook/HttpMethod;
    .param p5, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 177
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 178
    iput-object p2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 179
    iput-object p5, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 181
    invoke-virtual {p0, p4}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 183
    if-eqz p3, :cond_1

    .line 184
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v1, "migration_bundle"

    const-string v2, "fbsdk:20120913"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_0
    return-void

    .line 186
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1542
    invoke-static {p0, p1}, Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 4

    .prologue
    .line 1226
    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1228
    .local v0, "accessToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1229
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "access_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1231
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "sdk"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v2, "format"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    return-void
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 1236
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1238
    .local v2, "uriBuilder":Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1239
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1253
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1239
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1240
    .local v0, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1242
    .local v3, "value":Ljava/lang/Object;
    instance-of v5, v3, Ljava/lang/String;

    if-nez v5, :cond_2

    .line 1243
    iget-object v5, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne v5, v6, :cond_0

    .line 1244
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot use GET to upload a file."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1250
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1215
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1217
    .local v0, "connection":Ljava/net/HttpURLConnection;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v1, "Content-Type"

    invoke-static {}, Lcom/facebook/Request;->getMimeContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1221
    return-object v0
.end method

.method public static executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
    .locals 4
    .param p0, "request"    # Lcom/facebook/Request;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 916
    new-array v1, v3, [Lcom/facebook/Request;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;

    move-result-object v0

    .line 918
    .local v0, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 919
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "invalid state: expected a single response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 922
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Response;

    return-object v1
.end method

.method public static executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 6
    .param p0, "requests"    # Lcom/facebook/RequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    const-string v3, "requests"

    invoke-static {p0, v3}, Lcom/facebook/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 984
    const/4 v0, 0x0

    .line 986
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 993
    invoke-static {v0, p0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v2

    .line 994
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    :goto_0
    return-object v2

    .line 987
    .end local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    :catch_0
    move-exception v1

    .line 988
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getRequests()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v4, v5}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v2

    .line 989
    .restart local v2    # "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-static {p0, v2}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 962
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 942
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 2
    .param p0, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 1050
    const-string v1, "requests"

    invoke-static {p0, v1}, Lcom/facebook/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1052
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/RequestAsyncTask;-><init>(Lcom/facebook/RequestBatch;)V

    .line 1053
    .local v0, "asyncTask":Lcom/facebook/RequestAsyncTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1054
    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Lcom/facebook/RequestAsyncTask;"
        }
    .end annotation

    .prologue
    .line 1032
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 1012
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 10
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/RequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    invoke-static {p0, p1}, Lcom/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v2

    .line 1096
    .local v2, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-static {p0}, Lcom/facebook/Utility;->disconnectQuietly(Ljava/net/HttpURLConnection;)V

    .line 1098
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v0

    .line 1099
    .local v0, "numRequests":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_0

    .line 1100
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Received %d responses while expecting %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1101
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1100
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1104
    :cond_0
    invoke-static {p1, v2}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    .line 1108
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1109
    .local v4, "sessions":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/facebook/Session;>;"
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1114
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1118
    return-object v2

    .line 1109
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 1110
    .local v1, "request":Lcom/facebook/Request;
    iget-object v6, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v6, :cond_1

    .line 1111
    iget-object v6, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1114
    .end local v1    # "request":Lcom/facebook/Request;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Session;

    .line 1115
    .local v3, "session":Lcom/facebook/Session;
    invoke-virtual {v3}, Lcom/facebook/Session;->extendAccessTokenIfNeeded()V

    goto :goto_1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1074
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 2
    .param p0, "callbackHandler"    # Landroid/os/Handler;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .param p2, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 1162
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 1163
    .local v0, "asyncTask":Lcom/facebook/RequestAsyncTask;
    invoke-virtual {p2, p0}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1164
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/facebook/RequestAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1165
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "connection"    # Ljava/net/HttpURLConnection;
    .param p1, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 1138
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/Request;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeGraphPathRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 739
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserCallback;

    .prologue
    .line 674
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMyFriendsRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserListCallback;

    .prologue
    .line 689
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePlacesSearchRequestAsync(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/facebook/Request$GraphPlaceListCallback;

    .prologue
    .line 767
    invoke-static/range {p0 .. p5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePostRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "graphObject"    # Lcom/facebook/GraphObject;
    .param p3, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 638
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeRestRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "restMethod"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 659
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeStatusUpdateRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 784
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 706
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1533
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1539
    sget-object v2, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    :goto_0
    return-object v2

    .line 1533
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 1534
    .local v0, "request":Lcom/facebook/Request;
    iget-object v1, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 1535
    .local v1, "session":Lcom/facebook/Session;
    if-eqz v1, :cond_0

    .line 1536
    invoke-virtual {v1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1519
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1525
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1526
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FBAndroidSDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.0.0.b"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    .line 1529
    :cond_0
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    const/4 v3, 0x0

    .line 324
    new-instance v0, Lcom/facebook/Request;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserCallback;

    .prologue
    const/4 v3, 0x0

    .line 244
    new-instance v5, Lcom/facebook/Request$1;

    invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/Request$GraphUserCallback;)V

    .line 252
    .local v5, "wrapper":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "callback"    # Lcom/facebook/Request$GraphUserListCallback;

    .prologue
    const/4 v3, 0x0

    .line 265
    new-instance v5, Lcom/facebook/Request$2;

    invoke-direct {v5, p1}, Lcom/facebook/Request$2;-><init>(Lcom/facebook/Request$GraphUserListCallback;)V

    .line 273
    .local v5, "wrapper":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
    .locals 10
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "radiusInMeters"    # I
    .param p3, "resultsLimit"    # I
    .param p4, "searchText"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/facebook/Request$GraphPlaceListCallback;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 350
    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 355
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "limit"

    const-string v1, "%d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v0, "distance"

    const-string v1, "%d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v0, "center"

    .line 359
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {p4}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 361
    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    new-instance v5, Lcom/facebook/Request$3;

    invoke-direct {v5, p5}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request$GraphPlaceListCallback;)V

    .line 373
    .local v5, "wrapper":Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "graphObject"    # Lcom/facebook/GraphObject;
    .param p3, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 209
    new-instance v0, Lcom/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 210
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0, p2}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/GraphObject;)V

    .line 211
    return-object v0
.end method

.method public static newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;
    .locals 2
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "restMethod"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 229
    new-instance v0, Lcom/facebook/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 230
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0, p1}, Lcom/facebook/Request;->setRestMethod(Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 388
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 389
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "image"    # Landroid/graphics/Bitmap;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 288
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 289
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "picture"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 291
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .param p0, "session"    # Lcom/facebook/Session;
    .param p1, "file"    # Ljava/io/File;
    .param p2, "callback"    # Lcom/facebook/Request$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 305
    const/high16 v0, 0x10000000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 306
    .local v6, "descriptor":Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 307
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "picture"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 309
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method private static processGraphObject(Lcom/facebook/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    .locals 11
    .param p0, "graphObject"    # Lcom/facebook/GraphObject;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializer"    # Lcom/facebook/Request$KeyValueSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1418
    const/4 v3, 0x0

    .line 1419
    .local v3, "isOGAction":Z
    const-string v6, "me/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/me/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1420
    :cond_0
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1421
    .local v0, "colonLocation":I
    const-string v6, "?"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 1422
    .local v5, "questionMarkLocation":I
    const/4 v6, 0x3

    if-le v0, v6, :cond_3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-ge v0, v5, :cond_3

    :cond_1
    move v3, v7

    .line 1425
    .end local v0    # "colonLocation":I
    .end local v5    # "questionMarkLocation":I
    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/facebook/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1426
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1430
    return-void

    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v0    # "colonLocation":I
    .restart local v5    # "questionMarkLocation":I
    :cond_3
    move v3, v8

    .line 1422
    goto :goto_0

    .line 1426
    .end local v0    # "colonLocation":I
    .end local v5    # "questionMarkLocation":I
    .restart local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1427
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v10, "image"

    invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v4, v7

    .line 1428
    .local v4, "passByValue":Z
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v6, v10, p2, v4}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    .end local v4    # "passByValue":Z
    :cond_5
    move v4, v8

    .line 1427
    goto :goto_2
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
    .locals 15
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "serializer"    # Lcom/facebook/Request$KeyValueSerializer;
    .param p3, "passByValue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1434
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1435
    .local v10, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v11, Lcom/facebook/GraphObject;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1436
    check-cast p1, Lcom/facebook/GraphObject;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lcom/facebook/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 1437
    .local p1, "value":Lorg/json/JSONObject;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1443
    .end local p1    # "value":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-class v11, Lorg/json/JSONObject;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object/from16 v5, p1

    .line 1444
    check-cast v5, Lorg/json/JSONObject;

    .line 1445
    .local v5, "jsonObject":Lorg/json/JSONObject;
    if-eqz p3, :cond_4

    .line 1448
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1449
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1483
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_2
    return-void

    .line 1438
    .local p1, "value":Ljava/lang/Object;
    :cond_2
    const-class v11, Lcom/facebook/GraphObjectList;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1439
    check-cast p1, Lcom/facebook/GraphObjectList;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lcom/facebook/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 1440
    .local p1, "value":Lorg/json/JSONArray;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    goto :goto_0

    .line 1450
    .end local p1    # "value":Lorg/json/JSONArray;
    .restart local v5    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1451
    .local v8, "propertyName":Ljava/lang/String;
    const-string v11, "%s[%s]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    aput-object v8, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1452
    .local v9, "subKey":Ljava/lang/String;
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v9, v11, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    .line 1457
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v8    # "propertyName":Ljava/lang/String;
    .end local v9    # "subKey":Ljava/lang/String;
    :cond_4
    const-string v11, "id"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1458
    const-string v11, "id"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v11, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    .line 1459
    :cond_5
    const-string v11, "url"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1460
    const-string v11, "url"

    invoke-virtual {v5, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {p0, v11, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    .line 1463
    .end local v5    # "jsonObject":Lorg/json/JSONObject;
    :cond_6
    const-class v11, Lorg/json/JSONArray;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v4, p1

    .line 1464
    check-cast v4, Lorg/json/JSONArray;

    .line 1465
    .local v4, "jsonArray":Lorg/json/JSONArray;
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 1466
    .local v7, "length":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v7, :cond_1

    .line 1467
    const-string v11, "%s[%d]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1468
    .restart local v9    # "subKey":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v9, v11, v0, v1}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    .line 1466
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1470
    .end local v3    # "i":I
    .end local v4    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "length":I
    .end local v9    # "subKey":Ljava/lang/String;
    :cond_7
    const-class v11, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1471
    const-class v11, Ljava/lang/Number;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1472
    const-class v11, Ljava/lang/Boolean;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 1473
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, p0, v11}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1474
    :cond_9
    const-class v11, Ljava/util/Date;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v2, p1

    .line 1475
    check-cast v2, Ljava/util/Date;

    .line 1481
    .local v2, "date":Ljava/util/Date;
    sget-object v11, Lcom/facebook/Request;->iso8601DateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v0, p0, v11}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
    .locals 9
    .param p0, "requests"    # Lcom/facebook/RequestBatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, "responses":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v3

    .line 1185
    .local v3, "numRequests":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1186
    .local v1, "callbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/facebook/Request$Callback;Lcom/facebook/Response;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 1193
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1194
    new-instance v5, Lcom/facebook/Request$4;

    invoke-direct {v5, v1}, Lcom/facebook/Request$4;-><init>(Ljava/util/ArrayList;)V

    .line 1202
    .local v5, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1203
    .local v0, "callbackHandler":Landroid/os/Handler;
    if-nez v0, :cond_3

    .line 1205
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1211
    .end local v0    # "callbackHandler":Landroid/os/Handler;
    .end local v5    # "runnable":Ljava/lang/Runnable;
    :cond_0
    :goto_1
    return-void

    .line 1187
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v4

    .line 1188
    .local v4, "request":Lcom/facebook/Request;
    iget-object v6, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    if-eqz v6, :cond_2

    .line 1189
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/Response;

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1208
    .end local v4    # "request":Lcom/facebook/Request;
    .restart local v0    # "callbackHandler":Landroid/os/Handler;
    .restart local v5    # "runnable":Ljava/lang/Runnable;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lcom/facebook/Request$Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1499
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1505
    return-void

    .line 1499
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1500
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1501
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/Request$Serializer;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1502
    invoke-virtual {p1, v0, v2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "serializer"    # Lcom/facebook/Request$Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1486
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1488
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1494
    return-void

    .line 1488
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1489
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1490
    .local v2, "value":Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/Request$Serializer;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1491
    invoke-virtual {p1, v0, v2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V
    .locals 5
    .param p0, "serializer"    # Lcom/facebook/Request$Serializer;
    .param p2, "attachments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1509
    .local p1, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1510
    .local v0, "batch":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1514
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1515
    .local v1, "batchAsString":Ljava/lang/String;
    const-string v3, "batch"

    invoke-virtual {p0, v3, v1}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    return-void

    .line 1510
    .end local v1    # "batchAsString":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request;

    .line 1511
    .local v2, "request":Lcom/facebook/Request;
    invoke-direct {v2, v0, p2}, Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "batch"    # Lorg/json/JSONArray;
    .param p2, "attachments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1282
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1284
    .local v4, "batchEntry":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    if-eqz v12, :cond_0

    .line 1285
    const-string v12, "name"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1286
    const-string v12, "omit_response_on_success"

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1288
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 1289
    const-string v12, "depends_on"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1292
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/Request;->getUrlStringForBatchedRequest()Ljava/lang/String;

    move-result-object v10

    .line 1293
    .local v10, "relativeURL":Ljava/lang/String;
    const-string v12, "relative_url"

    invoke-virtual {v4, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1294
    const-string v12, "method"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v4, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1295
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v12, :cond_2

    .line 1296
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v12}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "accessToken":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1301
    .end local v1    # "accessToken":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v2, "attachmentNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    .line 1303
    .local v7, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 1313
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 1314
    const-string v12, ","

    invoke-static {v12, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 1315
    .local v3, "attachmentNamesString":Ljava/lang/String;
    const-string v12, "attached_files"

    invoke-virtual {v4, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1318
    .end local v3    # "attachmentNamesString":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/GraphObject;

    if-eqz v12, :cond_5

    .line 1320
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1321
    .local v8, "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/GraphObject;

    new-instance v13, Lcom/facebook/Request$5;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v8}, Lcom/facebook/Request$5;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V

    invoke-static {v12, v10, v13}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    .line 1327
    const-string v12, "&"

    invoke-static {v12, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1328
    .local v5, "bodyValue":Ljava/lang/String;
    const-string v12, "body"

    invoke-virtual {v4, v12, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1331
    .end local v5    # "bodyValue":Ljava/lang/String;
    .end local v8    # "keysAndValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1332
    return-void

    .line 1303
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1304
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v13, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1305
    .local v11, "value":Ljava/lang/Object;
    invoke-static {v11}, Lcom/facebook/Request$Serializer;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1307
    const-string v13, "%s%d"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "file"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1308
    .local v9, "name":Ljava/lang/String;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    move-object/from16 v0, p2

    invoke-static {v0, v9, v11}, Lcom/facebook/Utility;->putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static final serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 13
    .param p0, "requests"    # Lcom/facebook/RequestBatch;
    .param p1, "connection"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 1342
    new-instance v4, Lcom/facebook/Logger;

    sget-object v11, Lcom/facebook/LoggingBehaviors;->REQUESTS:Lcom/facebook/LoggingBehaviors;

    const-string v12, "Request"

    invoke-direct {v4, v11, v12}, Lcom/facebook/Logger;-><init>(Lcom/facebook/LoggingBehaviors;Ljava/lang/String;)V

    .line 1344
    .local v4, "logger":Lcom/facebook/Logger;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v5

    .line 1346
    .local v5, "numRequests":I
    if-ne v5, v10, :cond_1

    invoke-virtual {p0, v3}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v11

    iget-object v2, v11, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1347
    .local v2, "connectionHttpMethod":Lcom/facebook/HttpMethod;
    :goto_0
    invoke-virtual {v2}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1349
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    .line 1350
    .local v9, "url":Ljava/net/URL;
    const-string v11, "Request:\n"

    invoke-virtual {v4, v11}, Lcom/facebook/Logger;->append(Ljava/lang/String;)V

    .line 1351
    const-string v11, "Id"

    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1352
    const-string v11, "URL"

    invoke-virtual {v4, v11, v9}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1353
    const-string v11, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1354
    const-string v11, "User-Agent"

    const-string v12, "User-Agent"

    invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1355
    const-string v11, "Content-Type"

    const-string v12, "Content-Type"

    invoke-virtual {p1, v12}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Lcom/facebook/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1357
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v11

    invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1358
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v11

    invoke-virtual {p1, v11}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1362
    sget-object v11, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v2, v11, :cond_0

    move v3, v10

    .line 1363
    .local v3, "isPost":Z
    :cond_0
    if-nez v3, :cond_2

    .line 1364
    invoke-virtual {v4}, Lcom/facebook/Logger;->log()V

    .line 1408
    :goto_1
    return-void

    .line 1346
    .end local v2    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .end local v3    # "isPost":Z
    .end local v9    # "url":Ljava/net/URL;
    :cond_1
    sget-object v2, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_0

    .line 1368
    .restart local v2    # "connectionHttpMethod":Lcom/facebook/HttpMethod;
    .restart local v3    # "isPost":Z
    .restart local v9    # "url":Ljava/net/URL;
    :cond_2
    invoke-virtual {p1, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1370
    new-instance v6, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    invoke-direct {v6, v11}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1372
    .local v6, "outputStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v8, Lcom/facebook/Request$Serializer;

    invoke-direct {v8, v6, v4}, Lcom/facebook/Request$Serializer;-><init>(Ljava/io/BufferedOutputStream;Lcom/facebook/Logger;)V

    .line 1374
    .local v8, "serializer":Lcom/facebook/Request$Serializer;
    if-ne v5, v10, :cond_4

    .line 1375
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v7

    .line 1377
    .local v7, "request":Lcom/facebook/Request;
    const-string v10, "  Parameters:\n"

    invoke-virtual {v4, v10}, Lcom/facebook/Logger;->append(Ljava/lang/String;)V

    .line 1378
    iget-object v10, v7, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v10, v8}, Lcom/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V

    .line 1380
    const-string v10, "  Attachments:\n"

    invoke-virtual {v4, v10}, Lcom/facebook/Logger;->append(Ljava/lang/String;)V

    .line 1381
    iget-object v10, v7, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v10, v8}, Lcom/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V

    .line 1383
    iget-object v10, v7, Lcom/facebook/Request;->graphObject:Lcom/facebook/GraphObject;

    if-eqz v10, :cond_3

    .line 1384
    iget-object v10, v7, Lcom/facebook/Request;->graphObject:Lcom/facebook/GraphObject;

    invoke-virtual {v9}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    .end local v7    # "request":Lcom/facebook/Request;
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 1407
    invoke-virtual {v4}, Lcom/facebook/Logger;->log()V

    goto :goto_1

    .line 1387
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/facebook/Request;->getBatchAppId(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v1

    .line 1388
    .local v1, "batchAppID":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1389
    new-instance v10, Lcom/facebook/FacebookException;

    const-string v11, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {v10, v11}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1403
    .end local v1    # "batchAppID":Ljava/lang/String;
    .end local v8    # "serializer":Lcom/facebook/Request$Serializer;
    :catchall_0
    move-exception v10

    .line 1404
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 1405
    throw v10

    .line 1393
    .restart local v1    # "batchAppID":Ljava/lang/String;
    .restart local v8    # "serializer":Lcom/facebook/Request$Serializer;
    :cond_5
    :try_start_2
    const-string v10, "batch_app_id"

    invoke-virtual {v8, v10, v1}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1398
    .local v0, "attachments":Landroid/os/Bundle;
    invoke-static {v8, p0, v0}, Lcom/facebook/Request;->serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Landroid/os/Bundle;)V

    .line 1400
    const-string v10, "  Attachments:\n"

    invoke-virtual {v4, v10}, Lcom/facebook/Logger;->append(Ljava/lang/String;)V

    .line 1401
    invoke-static {v0, v8}, Lcom/facebook/Request;->serializeAttachments(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0
    .param p0, "applicationId"    # Ljava/lang/String;

    .prologue
    .line 598
    sput-object p0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    .line 599
    return-void
.end method

.method public static toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    .locals 6
    .param p0, "requests"    # Lcom/facebook/RequestBatch;

    .prologue
    .line 869
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 873
    const/4 v3, 0x0

    .line 875
    .local v3, "url":Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 877
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v2

    .line 878
    .local v2, "request":Lcom/facebook/Request;
    invoke-virtual {v2}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 890
    .end local v2    # "request":Lcom/facebook/Request;
    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 892
    .local v0, "connection":Ljava/net/HttpURLConnection;
    invoke-static {p0, v0}, Lcom/facebook/Request;->serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 899
    return-object v0

    .line 869
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "url":Ljava/net/URL;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request;

    .line 870
    .restart local v2    # "request":Lcom/facebook/Request;
    invoke-direct {v2}, Lcom/facebook/Request;->validate()V

    goto :goto_0

    .line 882
    .end local v2    # "request":Lcom/facebook/Request;
    .restart local v3    # "url":Ljava/net/URL;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/net/URL;

    .end local v3    # "url":Ljava/net/URL;
    const-string v4, "https://graph.facebook.com"

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v3    # "url":Ljava/net/URL;
    goto :goto_1

    .line 884
    .end local v3    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 885
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct URL for request"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 893
    .end local v1    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "url":Ljava/net/URL;
    :catch_1
    move-exception v1

    .line 894
    .local v1, "e":Ljava/io/IOException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct request body"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 895
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 896
    .local v1, "e":Lorg/json/JSONException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct request body"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 848
    .local p0, "requests":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/Request;>;"
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 850
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p0, "requests"    # [Lcom/facebook/Request;

    .prologue
    .line 830
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p0, "response"    # Lcom/facebook/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/GraphObject;",
            ">(",
            "Lcom/facebook/Response;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v2, 0x0

    .line 1543
    const-class v3, Lcom/facebook/GraphMultiResult;

    invoke-virtual {p0, v3}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/GraphObject;

    move-result-object v1

    check-cast v1, Lcom/facebook/GraphMultiResult;

    .line 1544
    .local v1, "multiResult":Lcom/facebook/GraphMultiResult;
    if-nez v1, :cond_1

    .line 1553
    :cond_0
    :goto_0
    return-object v2

    .line 1548
    :cond_1
    invoke-interface {v1}, Lcom/facebook/GraphMultiResult;->getData()Lcom/facebook/GraphObjectList;

    move-result-object v0

    .line 1549
    .local v0, "data":Lcom/facebook/GraphObjectList;, "Lcom/facebook/GraphObjectList<Lcom/facebook/GraphObject;>;"
    if-eqz v0, :cond_0

    .line 1553
    invoke-interface {v0, p1}, Lcom/facebook/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/GraphObjectList;

    move-result-object v2

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1336
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of a graph path or REST method may be specified per request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_0
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/Response;
    .locals 1

    .prologue
    .line 799
    invoke-static {p0}, Lcom/facebook/Request;->executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .locals 2

    .prologue
    .line 812
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/Request;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/Request$Callback;
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/GraphObject;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/GraphObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method final getUrlForSingleRequest()Ljava/net/URL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1272
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://api.facebook.com/method/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1277
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1278
    new-instance v1, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 1274
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://graph.facebook.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method final getUrlStringForBatchedRequest()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1257
    const/4 v0, 0x0

    .line 1258
    .local v0, "baseUrl":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1259
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "method/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1266
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchEntryDependsOn"    # Ljava/lang/String;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    .line 552
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0
    .param p1, "batchEntryName"    # Ljava/lang/String;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    .line 530
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0
    .param p1, "batchEntryOmitResultOnSuccess"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 576
    return-void
.end method

.method public final setCallback(Lcom/facebook/Request$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/facebook/Request$Callback;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 618
    return-void
.end method

.method public final setGraphObject(Lcom/facebook/GraphObject;)V
    .locals 0
    .param p1, "graphObject"    # Lcom/facebook/GraphObject;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/GraphObject;

    .line 411
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "graphPath"    # Ljava/lang/String;

    .prologue
    .line 429
    iput-object p1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 430
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 0
    .param p1, "httpMethod"    # Lcom/facebook/HttpMethod;

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .end local p1    # "httpMethod":Lcom/facebook/HttpMethod;
    :goto_0
    iput-object p1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 449
    return-void

    .line 448
    .restart local p1    # "httpMethod":Lcom/facebook/HttpMethod;
    :cond_0
    sget-object p1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_0
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 467
    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 468
    return-void
.end method

.method public final setRestMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "restMethod"    # Ljava/lang/String;

    .prologue
    .line 486
    iput-object p1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    .line 487
    return-void
.end method

.method public final setSession(Lcom/facebook/Session;)V
    .locals 0
    .param p1, "session"    # Lcom/facebook/Session;

    .prologue
    .line 506
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 507
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1176
    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/GraphObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1177
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1178
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    return-object v0
.end method
