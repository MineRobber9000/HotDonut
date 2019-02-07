.class public final Lcom/amazon/android/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/d;


# static fields
.field private static a:Lcom/amazon/android/n/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/android/a/a;

    invoke-direct {v0}, Lcom/amazon/android/a/a;-><init>()V

    sput-object v0, Lcom/amazon/android/a/b;->a:Lcom/amazon/android/n/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazon/android/n/f;
    .locals 1

    sget-object v0, Lcom/amazon/android/a/b;->a:Lcom/amazon/android/n/f;

    return-object v0
.end method
