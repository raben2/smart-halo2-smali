.class Lcom/instabug/library/invocation/d/c$c;
.super Ljava/lang/Object;
.source "ScreenRecordingFab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/invocation/d/c;->a(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/invocation/d/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/invocation/d/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/invocation/d/c$c;->a:Lcom/instabug/library/invocation/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NULL_DEREFERENCE"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/instabug/library/Instabug;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/instabug/library/invocation/d/c$c;->a:Lcom/instabug/library/invocation/d/c;

    invoke-static {v0}, Lcom/instabug/library/invocation/d/c;->A(Lcom/instabug/library/invocation/d/c;)Lcom/instabug/library/l/f/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/library/l/f/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/instabug/library/util/e;->b(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$c;->a:Lcom/instabug/library/invocation/d/c;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/instabug/library/invocation/d/c;->b(Lcom/instabug/library/invocation/d/c;Z)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p1}, Lcom/instabug/library/util/e;->a(Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/instabug/library/invocation/d/c$c;->a:Lcom/instabug/library/invocation/d/c;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/instabug/library/invocation/d/c;->b(Lcom/instabug/library/invocation/d/c;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
