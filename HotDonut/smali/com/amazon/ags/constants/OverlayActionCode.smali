.class public Lcom/amazon/ags/constants/OverlayActionCode;
.super Ljava/lang/Object;
.source "OverlayActionCode.java"


# static fields
.field public static final SHOW_ACHIEVEMENTS:I = 0x1

.field public static final SHOW_LEADERBOARDS:I = 0x2

.field public static final SHOW_SETTINGS:I = 0x3

.field public static final SHOW_SUMMARY:I = 0x4

.field public static final SHOW_TOP_ALL_TIME_LEADERBOARD:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
