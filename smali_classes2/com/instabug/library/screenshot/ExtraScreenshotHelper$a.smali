.class Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;
.super Ljava/lang/Object;
.source "ExtraScreenshotHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;


# direct methods
.method constructor <init>(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    iput-object p2, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    invoke-static {p1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->access$000(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;->b:Lcom/instabug/library/screenshot/ExtraScreenshotHelper;

    iget-object v0, p0, Lcom/instabug/library/screenshot/ExtraScreenshotHelper$a;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->access$100(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;)Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/instabug/library/screenshot/ExtraScreenshotHelper;->access$200(Lcom/instabug/library/screenshot/ExtraScreenshotHelper;Landroid/app/Activity;Lcom/instabug/library/screenshot/ExtraScreenshotHelper$OnCaptureListener;)V

    return-void
.end method
