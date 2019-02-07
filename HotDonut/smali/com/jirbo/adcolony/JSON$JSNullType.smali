.class Lcom/jirbo/adcolony/JSON$JSNullType;
.super Lcom/jirbo/adcolony/JSON$JSObject;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSNullType"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    return-void
.end method


# virtual methods
.method toBoolean()Z
    .locals 1

    .prologue
    .line 910
    const/4 v0, 0x0

    return v0
.end method

.method toJSON(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 905
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    return-void
.end method
