.class Lcom/instabug/bug/view/reporting/ReportingContainerActivity$a;
.super Ljava/lang/Object;
.source "ReportingContainerActivity.java"

# interfaces
.implements Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/reporting/ReportingContainerActivity;->a(Landroid/graphics/Bitmap;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/view/reporting/ReportingContainerActivity;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/reporting/ReportingContainerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$a;->a:Lcom/instabug/bug/view/reporting/ReportingContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Landroid/net/Uri;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/bug/view/reporting/ReportingContainerActivity$a;->a:Lcom/instabug/bug/view/reporting/ReportingContainerActivity;

    invoke-virtual {p1, v0}, Lcom/instabug/bug/c;->c(Landroid/content/Context;)V

    return-void
.end method
