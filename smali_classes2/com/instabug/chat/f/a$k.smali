.class Lcom/instabug/chat/f/a$k;
.super Ljava/lang/Object;
.source "NotificationBarInvoker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/f/a;->a(Landroid/app/Activity;Lcom/instabug/chat/e/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/e/f;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/instabug/library/ui/custom/CircularImageView;

.field final synthetic d:Lcom/instabug/chat/f/a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/f/a;Lcom/instabug/chat/e/f;Landroid/app/Activity;Lcom/instabug/library/ui/custom/CircularImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/f/a$k;->d:Lcom/instabug/chat/f/a;

    iput-object p2, p0, Lcom/instabug/chat/f/a$k;->a:Lcom/instabug/chat/e/f;

    iput-object p3, p0, Lcom/instabug/chat/f/a$k;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/instabug/chat/f/a$k;->c:Lcom/instabug/library/ui/custom/CircularImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/f/a$k;->a:Lcom/instabug/chat/e/f;

    invoke-virtual {v0}, Lcom/instabug/chat/e/f;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/instabug/chat/f/a$k;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/instabug/chat/f/a$k;->a:Lcom/instabug/chat/e/f;

    invoke-virtual {v1}, Lcom/instabug/chat/e/f;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/model/AssetEntity$AssetType;->IMAGE:Lcom/instabug/library/model/AssetEntity$AssetType;

    new-instance v3, Lcom/instabug/chat/f/a$k$a;

    invoke-direct {v3, p0}, Lcom/instabug/chat/f/a$k$a;-><init>(Lcom/instabug/chat/f/a$k;)V

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/util/BitmapUtils;->loadBitmapForAsset(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    :cond_0
    return-void
.end method
