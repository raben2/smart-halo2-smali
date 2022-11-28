.class Lcom/instabug/library/instacapture/screenshot/c/c$a$a;
.super Ljava/lang/Object;
.source "PixelCopyDelegate.java"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/instacapture/screenshot/c/c$a;->a(Landroid/util/Pair;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ljava/util/HashMap;

.field final synthetic c:Lcom/instabug/library/instacapture/screenshot/c/c$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/instacapture/screenshot/c/c$a;Landroid/graphics/Bitmap;Ljava/util/HashMap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->c:Lcom/instabug/library/instacapture/screenshot/c/c$a;

    iput-object p2, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->b:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPixelCopyFinished(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->c:Lcom/instabug/library/instacapture/screenshot/c/c$a;

    iget-object v0, v0, Lcom/instabug/library/instacapture/screenshot/c/c$a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, v1}, Lcom/instabug/library/instacapture/screenshot/c/c;->a(Landroid/app/Activity;ILandroid/graphics/Bitmap;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->c:Lcom/instabug/library/instacapture/screenshot/c/c$a;

    iget-object p1, p1, Lcom/instabug/library/instacapture/screenshot/c/c$a;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->a:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/instabug/library/settings/SettingsManager;->getInstance()Lcom/instabug/library/settings/SettingsManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/instabug/library/util/BitmapUtils;->maskBitmap(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/settings/SettingsManager;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const-string p1, "PixelCopyDelegate"

    const-string v0, "Something went wrong while capturing "

    .line 7
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/instabug/library/instacapture/screenshot/c/c$a$a;->b:Ljava/util/HashMap;

    invoke-static {p1}, Lcom/instabug/library/instacapture/screenshot/c/c;->a(Ljava/util/HashMap;)V

    return-void
.end method
