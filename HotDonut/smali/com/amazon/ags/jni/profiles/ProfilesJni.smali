.class public Lcom/amazon/ags/jni/profiles/ProfilesJni;
.super Ljava/lang/Object;
.source "ProfilesJni.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native getLocalPlayerProfileResponseFailure(JII)V
.end method

.method public static native getLocalPlayerProfileResponseSuccess(Lcom/amazon/ags/api/profiles/RequestPlayerProfileResponse;JI)V
.end method
