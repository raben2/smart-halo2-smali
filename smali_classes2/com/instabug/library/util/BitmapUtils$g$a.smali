.class Lcom/instabug/library/util/BitmapUtils$g$a;
.super Ljava/lang/Object;
.source "BitmapUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/util/BitmapUtils$g;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcom/instabug/library/util/BitmapUtils$g;


# direct methods
.method constructor <init>(Lcom/instabug/library/util/BitmapUtils$g;ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/util/BitmapUtils$g$a;->c:Lcom/instabug/library/util/BitmapUtils$g;

    iput-boolean p2, p0, Lcom/instabug/library/util/BitmapUtils$g$a;->a:Z

    iput-object p3, p0, Lcom/instabug/library/util/BitmapUtils$g$a;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/instabug/library/util/BitmapUtils$g$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instabug/library/util/BitmapUtils$g$a;->c:Lcom/instabug/library/util/BitmapUtils$g;

    iget-object v0, v0, Lcom/instabug/library/util/BitmapUtils$g;->d:Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/instabug/library/util/BitmapUtils$g$a;->b:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;->onSuccess(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
