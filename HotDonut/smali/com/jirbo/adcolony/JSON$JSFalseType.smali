.class Lcom/jirbo/adcolony/JSON$JSFalseType;
.super Lcom/jirbo/adcolony/JSON$JSObject;
.source "JSON.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jirbo/adcolony/JSON;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSFalseType"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Lcom/jirbo/adcolony/JSON$JSObject;-><init>()V

    return-void
.end method


# virtual methods
.method toBoolean()Z
    .locals 1

    .prologue
    .line 897
    const/4 v0, 0x0

    return v0
.end method

.method toJSON(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;

    .prologue
    .line 892
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    return-void
.end method
