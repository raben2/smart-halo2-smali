.class public interface abstract Lcom/instabug/library/util/BitmapUtils$OnBitmapReady;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/util/BitmapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBitmapReady"
.end annotation


# virtual methods
.method public abstract onBitmapFailedToLoad()V
.end method

.method public abstract onBitmapReady(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
