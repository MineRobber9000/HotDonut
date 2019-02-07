.class public final Lcom/amazon/android/j/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/d;


# instance fields
.field public final a:Landroid/app/Activity;

.field private final b:Lcom/amazon/android/j/c;


# direct methods
.method public constructor <init>(Lcom/amazon/android/j/c;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/j/b;->b:Lcom/amazon/android/j/c;

    iput-object p2, p0, Lcom/amazon/android/j/b;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final a()Lcom/amazon/android/n/f;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/j/b;->b:Lcom/amazon/android/j/c;

    return-object v0
.end method
