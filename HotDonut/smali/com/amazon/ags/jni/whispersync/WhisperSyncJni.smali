.class public Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;
.super Ljava/lang/Object;
.source "WhisperSyncJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getRequestRevertBlobPlayerCancelled(JI)V
.end method

.method public static native getRequestRevertBlobRevertFailure(JII)V
.end method

.method public static native getRequestRevertBlobRevertedGameData([BJI)Z
.end method

.method public static native getRequestRevertMultiFilePlayerCancelled(JI)V
.end method

.method public static native getRequestRevertMultiFileRevertFailure(JII)V
.end method

.method public static native getRequestRevertMultiFileRevertedGameData(JI)V
.end method

.method public static native getSynchronizeBlobAlreadySynchronized(JI)V
.end method

.method public static native getSynchronizeBlobConflictDeferral(JI)V
.end method

.method public static native getSynchronizeBlobGameUploadSuccess(JI)V
.end method

.method public static native getSynchronizeBlobResponseNewGameData([BJI)Z
.end method

.method public static native getSynchronizeBlobSynchronizeFailure(JII)V
.end method

.method public static native getSynchronizeMultiFileAlreadySynchronized(JI)V
.end method

.method public static native getSynchronizeMultiFileConflictDeferral(JI)V
.end method

.method public static native getSynchronizeMultiFileGameUploadSuccess(JI)V
.end method

.method public static native getSynchronizeMultiFileNewGameData(JI)Z
.end method

.method public static native getSynchronizeMultiFileSynchronizeFailure(JII)V
.end method

.method public static native getSynchronizeMultiFileUnpackComplete(JI)V
.end method

.method public static native getSynchronizeMultiFileUnpackFailure(JI)V
.end method
