.class public abstract Lcom/amazon/ags/jni/JniResponseHandler;
.super Ljava/lang/Object;
.source "JniResponseHandler.java"


# instance fields
.field protected m_CallbackPointer:J

.field protected m_DeveloperTag:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/amazon/ags/jni/JniResponseHandler;->m_DeveloperTag:I

    .line 25
    iput-wide p2, p0, Lcom/amazon/ags/jni/JniResponseHandler;->m_CallbackPointer:J

    .line 26
    return-void
.end method
