.class public final Lcom/amazon/ags/constants/ServiceActionCode;
.super Ljava/lang/Object;
.source "ServiceActionCode.java"


# static fields
.field public static final AUTHENTICATE:I = 0x4

.field public static final AUTHORIZE_SESSION:I = 0x19

.field public static final DOWNLOAD:I = 0x2

.field public static final GENERIC_RESPONSE:I = 0x0

.field public static final INITIALIZE:I = 0x17

.field public static final LOAD_ACHIEVEMENT_ICON:I = 0x10

.field public static final QUERY_AUTHENTICATION:I = 0x3

.field public static final REQUEST_ACHIEVEMENT:I = 0xc

.field public static final REQUEST_ACHIEVEMENTS:I = 0x11

.field public static final REQUEST_LEADERBOARDS:I = 0x9

.field public static final REQUEST_LOCAL_PLAYER_PROFILE:I = 0x12

.field public static final REQUEST_PERCENTILES:I = 0x1f

.field public static final REQUEST_PLAYER_SCORE:I = 0xa

.field public static final REQUEST_SCORES:I = 0x7

.field public static final REQUEST_SESSION:I = 0x18

.field public static final RESET_ACHIEVEMENT:I = 0xf

.field public static final RESET_ACHIEVEMENTS:I = 0xe

.field public static final RETRIEVE_GAME_HISTORY:I = 0xb

.field public static final RETRIEVE_LATEST_SAVED_GAME_SUMMARY:I = 0x6

.field public static final REVERT:I = 0x16

.field public static final SHOW_OVERLAY_ACHIEVEMENTS:I = 0x1a

.field public static final SHOW_OVERLAY_LEADERBOARDS:I = 0x1b

.field public static final SHOW_OVERLAY_RANKS:I = 0x1c

.field public static final SHOW_SETTINGS:I = 0x1d

.field public static final SHOW_SOFTKEY_PRESS_OVERLAY:I = 0x1e

.field public static final SUBMIT_SCORE:I = 0x8

.field public static final SYNCHRONIZE:I = 0x15

.field public static final UPDATE_ACHIEVEMENT_PROGRESS:I = 0xd

.field public static final UPLOAD:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
