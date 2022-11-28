.class Lcom/instabug/chat/ui/f/f$a;
.super Ljava/lang/Object;
.source "ImageAttachmentViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/f;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/chat/ui/f/f;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/f$a;->a:Lcom/instabug/chat/ui/f/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/f$a;->a:Lcom/instabug/chat/ui/f/f;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/ui/f/f$a;->a:Lcom/instabug/chat/ui/f/f;

    invoke-static {v1}, Lcom/instabug/chat/ui/f/f;->a(Lcom/instabug/chat/ui/f/f;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/instabug/library/model/AssetEntity$AssetType;->IMAGE:Lcom/instabug/library/model/AssetEntity$AssetType;

    new-instance v3, Lcom/instabug/chat/ui/f/f$a$a;

    invoke-direct {v3, p0}, Lcom/instabug/chat/ui/f/f$a$a;-><init>(Lcom/instabug/chat/ui/f/f$a;)V

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/util/BitmapUtils;->loadBitmapForAsset(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    return-void
.end method
