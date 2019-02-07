.class final Lcom/facebook/ServerProtocol;
.super Ljava/lang/Object;
.source "ServerProtocol.java"


# static fields
.field static final BATCHED_REST_METHOD_URL_BASE:Ljava/lang/String; = "method/"

.field static final DIALOG_AUTHORITY:Ljava/lang/String; = "m.facebook.com"

.field static final DIALOG_OAUTH_PATH:Ljava/lang/String; = "dialog/oauth"

.field static final DIALOG_PARAM_CLIENT_ID:Ljava/lang/String; = "client_id"

.field static final DIALOG_PARAM_DISPLAY:Ljava/lang/String; = "display"

.field static final DIALOG_PARAM_REDIRECT_URI:Ljava/lang/String; = "redirect_uri"

.field static final DIALOG_PARAM_SCOPE:Ljava/lang/String; = "scope"

.field static final DIALOG_PARAM_TYPE:Ljava/lang/String; = "type"

.field static final FACEBOOK_COM:Ljava/lang/String; = "facebook.com"

.field static final GRAPH_URL:Ljava/lang/String; = "https://graph.facebook.com"

.field static final GRAPH_URL_BASE:Ljava/lang/String; = "https://graph.facebook.com/"

.field static final REST_URL_BASE:Ljava/lang/String; = "https://api.facebook.com/method/"

.field static final errorsProxyAuthDisabled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final errorsUserCanceled:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    .line 38
    const-string v1, "service_disabled"

    aput-object v1, v0, v2

    const-string v1, "AndroidAuthKillSwitchException"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    .line 40
    const-string v1, "access_denied"

    aput-object v1, v0, v2

    const-string v1, "OAuthAccessDeniedException"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/facebook/Utility;->unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    sput-object v0, Lcom/facebook/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    .line 21
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
