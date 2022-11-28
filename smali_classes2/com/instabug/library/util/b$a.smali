.class Lcom/instabug/library/util/b$a;
.super Ljava/lang/Object;
.source "KeyboardEventListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/b;-><init>(Landroid/app/Activity;Lcom/instabug/library/util/b$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/instabug/library/util/b;


# direct methods
.method constructor <init>(Lcom/instabug/library/util/b;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/b$a;->c:Lcom/instabug/library/util/b;

    iput-object p2, p0, Lcom/instabug/library/util/b$a;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget-object p1, p0, Lcom/instabug/library/util/b$a;->c:Lcom/instabug/library/util/b;

    iget-object p2, p0, Lcom/instabug/library/util/b$a;->b:Landroid/app/Activity;

    invoke-virtual {p1, p2}, Lcom/instabug/library/util/b;->b(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/instabug/library/util/b$a;->a:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/util/b$a;->c:Lcom/instabug/library/util/b;

    iget-object v1, p0, Lcom/instabug/library/util/b$a;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/b;->b(Landroid/app/Activity;)Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/instabug/library/util/b$a;->a:Z

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/instabug/library/util/b$a;->c:Lcom/instabug/library/util/b;

    invoke-static {v1, v0}, Lcom/instabug/library/util/b;->a(Lcom/instabug/library/util/b;Z)V

    .line 4
    iput-boolean v0, p0, Lcom/instabug/library/util/b$a;->a:Z

    :cond_0
    return-void
.end method
