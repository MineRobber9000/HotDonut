.class public Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;
.super Lcom/amazon/ags/client/RequestResponseImp;
.source "UpdateProgressResponseImp.java"

# interfaces
.implements Lcom/amazon/ags/api/achievements/UpdateProgressResponse;


# instance fields
.field private final isNewlyUnlocked:Z


# direct methods
.method public constructor <init>(ILcom/amazon/ags/api/ErrorCode;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(ILcom/amazon/ags/api/ErrorCode;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;->isNewlyUnlocked:Z

    .line 30
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0
    .param p1, "isNewlyUnlocked"    # Z
    .param p2, "responseCode"    # I

    .prologue
    .line 22
    invoke-direct {p0, p2}, Lcom/amazon/ags/client/RequestResponseImp;-><init>(I)V

    .line 24
    iput-boolean p1, p0, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;->isNewlyUnlocked:Z

    .line 25
    return-void
.end method


# virtual methods
.method public isNewlyUnlocked()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/amazon/ags/client/achievements/UpdateProgressResponseImp;->isNewlyUnlocked:Z

    return v0
.end method
