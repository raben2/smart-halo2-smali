.class Lcom/instabug/chat/ui/f/g$g;
.super Ljava/lang/Object;
.source "MessagesListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/g;->a(Ljava/lang/String;Landroid/widget/ImageView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Z

.field final synthetic d:Lcom/instabug/chat/ui/f/g;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/g;Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/g$g;->d:Lcom/instabug/chat/ui/f/g;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/g$g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/instabug/chat/ui/f/g$g;->b:Landroid/widget/ImageView;

    iput-boolean p4, p0, Lcom/instabug/chat/ui/f/g$g;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/g$g;->d:Lcom/instabug/chat/ui/f/g;

    invoke-static {v0}, Lcom/instabug/chat/ui/f/g;->c(Lcom/instabug/chat/ui/f/g;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/chat/ui/f/g$g;->a:Ljava/lang/String;

    sget-object v2, Lcom/instabug/library/model/AssetEntity$AssetType;->IMAGE:Lcom/instabug/library/model/AssetEntity$AssetType;

    new-instance v3, Lcom/instabug/chat/ui/f/g$g$a;

    invoke-direct {v3, p0}, Lcom/instabug/chat/ui/f/g$g$a;-><init>(Lcom/instabug/chat/ui/f/g$g;)V

    invoke-static {v0, v1, v2, v3}, Lcom/instabug/library/util/BitmapUtils;->loadBitmapForAsset(Landroid/content/Context;Ljava/lang/String;Lcom/instabug/library/model/AssetEntity$AssetType;Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;)V

    return-void
.end method
