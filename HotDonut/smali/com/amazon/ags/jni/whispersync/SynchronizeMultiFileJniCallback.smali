.class public Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;
.super Ljava/lang/Object;
.source "SynchronizeMultiFileJniCallback.java"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/SynchronizeMultiFileCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected m_CallbackPointer:J

.field protected m_DeveloperTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_DeveloperTag:I

    .line 26
    iput-wide p2, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_CallbackPointer:J

    .line 27
    return-void
.end method


# virtual methods
.method public onAlreadySynchronized()V
    .locals 3

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getSynchronizeMultiFileAlreadySynchronized(JI)V

    .line 34
    return-void
.end method

.method public onConflictDeferral()V
    .locals 3

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getSynchronizeMultiFileConflictDeferral(JI)V

    .line 41
    return-void
.end method

.method public onGameUploadSuccess()V
    .locals 3

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getSynchronizeMultiFileGameUploadSuccess(JI)V

    .line 48
    return-void
.end method

.method public onNewGameData()V
    .locals 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getSynchronizeMultiFileNewGameData(JI)Z

    .line 63
    return-void
.end method

.method public onSynchronizeFailure(Lcom/amazon/ags/api/ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_CallbackPointer:J

    invoke-virtual {p1}, Lcom/amazon/ags/api/ErrorCode;->ordinal()I

    move-result v2

    iget v3, p0, Lcom/amazon/ags/jni/whispersync/SynchronizeMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getSynchronizeMultiFileSynchronizeFailure(JII)V

    .line 56
    return-void
.end method
