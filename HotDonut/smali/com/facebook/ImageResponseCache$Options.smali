.class final enum Lcom/facebook/ImageResponseCache$Options;
.super Ljava/lang/Enum;
.source "ImageResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ImageResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Options"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ImageResponseCache$Options;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/ImageResponseCache$Options;

.field public static final enum FOLLOW_REDIRECTS:Lcom/facebook/ImageResponseCache$Options;

.field public static final NONE:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/facebook/ImageResponseCache$Options;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum RETURN_STREAM_ON_HTTP_ERROR:Lcom/facebook/ImageResponseCache$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 225
    new-instance v0, Lcom/facebook/ImageResponseCache$Options;

    const-string v1, "FOLLOW_REDIRECTS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ImageResponseCache$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ImageResponseCache$Options;->FOLLOW_REDIRECTS:Lcom/facebook/ImageResponseCache$Options;

    .line 226
    new-instance v0, Lcom/facebook/ImageResponseCache$Options;

    const-string v1, "RETURN_STREAM_ON_HTTP_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ImageResponseCache$Options;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ImageResponseCache$Options;->RETURN_STREAM_ON_HTTP_ERROR:Lcom/facebook/ImageResponseCache$Options;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ImageResponseCache$Options;

    sget-object v1, Lcom/facebook/ImageResponseCache$Options;->FOLLOW_REDIRECTS:Lcom/facebook/ImageResponseCache$Options;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ImageResponseCache$Options;->RETURN_STREAM_ON_HTTP_ERROR:Lcom/facebook/ImageResponseCache$Options;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/ImageResponseCache$Options;->ENUM$VALUES:[Lcom/facebook/ImageResponseCache$Options;

    .line 227
    const-class v0, Lcom/facebook/ImageResponseCache$Options;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/ImageResponseCache$Options;->NONE:Ljava/util/EnumSet;

    .line 224
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ImageResponseCache$Options;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/facebook/ImageResponseCache$Options;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ImageResponseCache$Options;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ImageResponseCache$Options;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/facebook/ImageResponseCache$Options;->ENUM$VALUES:[Lcom/facebook/ImageResponseCache$Options;

    array-length v1, v0

    new-array v2, v1, [Lcom/facebook/ImageResponseCache$Options;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
