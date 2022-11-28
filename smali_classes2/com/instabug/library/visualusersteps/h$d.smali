.class Lcom/instabug/library/visualusersteps/h$d;
.super Ljava/lang/Object;
.source "VisualUserStepsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/visualusersteps/h;->a(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/instabug/library/visualusersteps/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/instabug/library/visualusersteps/c;


# direct methods
.method constructor <init>(Lcom/instabug/library/visualusersteps/h;Landroid/graphics/Bitmap;Landroid/app/Activity;Lcom/instabug/library/visualusersteps/c;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/visualusersteps/h$d;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/instabug/library/visualusersteps/h$d;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/instabug/library/visualusersteps/h$d;->c:Lcom/instabug/library/visualusersteps/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/instabug/library/visualusersteps/h$d;->a:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/instabug/library/visualusersteps/h$d;->b:Landroid/app/Activity;

    .line 2
    invoke-static {v1}, Lcom/instabug/library/visualusersteps/VisualUserStepsHelper;->getVisualUserStepsDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "step"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/instabug/library/visualusersteps/h$d;->c:Lcom/instabug/library/visualusersteps/c;

    .line 3
    invoke-virtual {v3}, Lcom/instabug/library/visualusersteps/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/instabug/library/visualusersteps/h$d$a;

    invoke-direct {v3, p0}, Lcom/instabug/library/visualusersteps/h$d$a;-><init>(Lcom/instabug/library/visualusersteps/h$d;)V

    const/16 v4, 0x46

    .line 4
    invoke-static {v0, v4, v1, v2, v3}, Lcom/instabug/library/util/BitmapUtils;->saveBitmapAsPNG(Landroid/graphics/Bitmap;ILjava/io/File;Ljava/lang/String;Lcom/instabug/library/util/BitmapUtils$OnSaveBitmapCallback;)V

    return-void
.end method
