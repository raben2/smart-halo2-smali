.class public Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;
.super Ljava/lang/Object;
.source "ImageLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/tasks/ImageLoadingTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageLoadingResponse"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/tasks/ImageLoadingTask;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;->this$0:Lbike/smarthalo/app/tasks/ImageLoadingTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lbike/smarthalo/app/tasks/ImageLoadingTask$ImageLoadingResponse;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
