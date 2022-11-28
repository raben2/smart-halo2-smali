.class Lcom/instabug/library/visualusersteps/e$c;
.super Ljava/lang/Object;
.source "TouchedViewsProcessor.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/e;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/e$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/visualusersteps/e$e;

.field final synthetic b:Lcom/instabug/library/visualusersteps/c;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/instabug/library/visualusersteps/e;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/e;Lcom/instabug/library/visualusersteps/e$e;Lcom/instabug/library/visualusersteps/c;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    iput-object p2, p0, Lcom/instabug/library/visualusersteps/e$c;->a:Lcom/instabug/library/visualusersteps/e$e;

    iput-object p3, p0, Lcom/instabug/library/visualusersteps/e$c;->b:Lcom/instabug/library/visualusersteps/c;

    iput-object p4, p0, Lcom/instabug/library/visualusersteps/e$c;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchedViewsProcessor"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$c;->c:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$c;->c:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "the button \"%s\""

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->a:Lcom/instabug/library/visualusersteps/e$e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$c;->b:Lcom/instabug/library/visualusersteps/c;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object p1

    const-string v0, "a button"

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->b(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {p1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/instabug/library/visualusersteps/d;->a(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->a:Lcom/instabug/library/visualusersteps/e$e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$c;->b:Lcom/instabug/library/visualusersteps/c;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    :goto_0
    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v0

    const-string v1, "the button "

    invoke-virtual {v0, v1}, Lcom/instabug/library/visualusersteps/d;->c(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/visualusersteps/d;->b(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v0}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/visualusersteps/d;->a(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/instabug/library/core/InstabugCore;->encrypt(Ljava/lang/String;)Z

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/instabug/library/visualusersteps/e$c;->a:Lcom/instabug/library/visualusersteps/e$e;

    iget-object v0, p0, Lcom/instabug/library/visualusersteps/e$c;->b:Lcom/instabug/library/visualusersteps/c;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/e$c;->d:Lcom/instabug/library/visualusersteps/e;

    invoke-static {v1}, Lcom/instabug/library/visualusersteps/e;->a(Lcom/instabug/library/visualusersteps/e;)Lcom/instabug/library/visualusersteps/d;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/instabug/library/visualusersteps/e$e;->a(Lcom/instabug/library/visualusersteps/c;Lcom/instabug/library/visualusersteps/d;)V

    return-void
.end method
