.class public Lcom/facebook/FacebookServiceErrorException;
.super Lcom/facebook/FacebookException;
.source "FacebookServiceErrorException.java"


# static fields
.field public static final UNKNOWN_ERROR_CODE:I = -0x1

.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final facebookErrorCode:I

.field private final facebookErrorType:Ljava/lang/String;

.field private final httpResponseCode:I

.field private final responseBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .param p1, "responseCode"    # I

    .prologue
    const/4 v3, 0x0

    .line 43
    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/FacebookServiceErrorException;-><init>(IILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 44
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "responseCode"    # I
    .param p2, "facebookErrorCode"    # I
    .param p3, "facebookErrorType"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "responseBody"    # Lorg/json/JSONObject;

    .prologue
    .line 57
    invoke-direct {p0, p4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 58
    iput p1, p0, Lcom/facebook/FacebookServiceErrorException;->httpResponseCode:I

    .line 59
    iput p2, p0, Lcom/facebook/FacebookServiceErrorException;->facebookErrorCode:I

    .line 60
    iput-object p3, p0, Lcom/facebook/FacebookServiceErrorException;->facebookErrorType:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/facebook/FacebookServiceErrorException;->responseBody:Lorg/json/JSONObject;

    .line 62
    return-void
.end method


# virtual methods
.method public final getFacebookErrorCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/facebook/FacebookServiceErrorException;->facebookErrorCode:I

    return v0
.end method

.method public final getFacebookErrorType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/FacebookServiceErrorException;->facebookErrorType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpResponseCode()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/facebook/FacebookServiceErrorException;->httpResponseCode:I

    return v0
.end method

.method public final getResponseBody()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/facebook/FacebookServiceErrorException;->responseBody:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FacebookServiceErrorException: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "httpResponseCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    iget v1, p0, Lcom/facebook/FacebookServiceErrorException;->httpResponseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", facebookErrorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/facebook/FacebookServiceErrorException;->facebookErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    const-string v1, ", facebookErrorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/FacebookServiceErrorException;->facebookErrorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/facebook/FacebookServiceErrorException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method
