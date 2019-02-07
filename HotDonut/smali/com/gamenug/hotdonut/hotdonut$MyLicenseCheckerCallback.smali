.class Lcom/gamenug/hotdonut/hotdonut$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "hotdonut.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamenug/hotdonut/hotdonut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gamenug/hotdonut/hotdonut;


# direct methods
.method private constructor <init>(Lcom/gamenug/hotdonut/hotdonut;)V
    .locals 0

    .prologue
    .line 932
    iput-object p1, p0, Lcom/gamenug/hotdonut/hotdonut$MyLicenseCheckerCallback;->this$0:Lcom/gamenug/hotdonut/hotdonut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 942
    return-void
.end method

.method public applicationError(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 975
    return-void
.end method

.method public dontAllow(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 960
    return-void
.end method
