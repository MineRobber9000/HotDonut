.class public final Lcom/amazon/android/j/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/android/n/d;


# instance fields
.field private final a:Lcom/amazon/android/j/d;

.field private final b:Landroid/app/Application;


# direct methods
.method public constructor <init>(Lcom/amazon/android/j/d;Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/j/a;->a:Lcom/amazon/android/j/d;

    iput-object p2, p0, Lcom/amazon/android/j/a;->b:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/amazon/android/n/f;
    .locals 1

    iget-object v0, p0, Lcom/amazon/android/j/a;->a:Lcom/amazon/android/j/d;

    return-object v0
.end method
