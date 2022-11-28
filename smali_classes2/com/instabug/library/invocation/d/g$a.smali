.class Lcom/instabug/library/invocation/d/g$a;
.super Ljava/lang/Object;
.source "TwoFingerSwipeLeftInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/g;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/g$a;->a:Lcom/instabug/library/invocation/d/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/library/invocation/d/g$a;->a:Lcom/instabug/library/invocation/d/g;

    new-instance v1, Lcom/instabug/library/invocation/d/g$b;

    invoke-direct {v1, v0}, Lcom/instabug/library/invocation/d/g$b;-><init>(Lcom/instabug/library/invocation/d/g;)V

    invoke-static {v0, v1}, Lcom/instabug/library/invocation/d/g;->a(Lcom/instabug/library/invocation/d/g;Lcom/instabug/library/invocation/d/g$b;)Lcom/instabug/library/invocation/d/g$b;

    .line 2
    iget-object v0, p0, Lcom/instabug/library/invocation/d/g$a;->a:Lcom/instabug/library/invocation/d/g;

    new-instance v1, Landroidx/core/view/GestureDetectorCompat;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/g;->b(Lcom/instabug/library/invocation/d/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/library/invocation/d/g$a;->a:Lcom/instabug/library/invocation/d/g;

    invoke-static {v3}, Lcom/instabug/library/invocation/d/g;->a(Lcom/instabug/library/invocation/d/g;)Lcom/instabug/library/invocation/d/g$b;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    invoke-static {v0, v1}, Lcom/instabug/library/invocation/d/g;->a(Lcom/instabug/library/invocation/d/g;Landroidx/core/view/GestureDetectorCompat;)Landroidx/core/view/GestureDetectorCompat;

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/d/g$a;->a:Lcom/instabug/library/invocation/d/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instabug/library/invocation/d/g;->a(Lcom/instabug/library/invocation/d/g;Z)Z

    return-void
.end method
