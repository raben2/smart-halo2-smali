.class public Lcom/instabug/chat/settings/AttachmentTypesState;
.super Ljava/lang/Object;
.source "AttachmentTypesState.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private imageFromGalleryEnabled:Z

.field private screenRecordingEnabled:Z

.field private screenshotEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenshotEnabled:Z

    .line 3
    iput-boolean v0, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->imageFromGalleryEnabled:Z

    .line 4
    iput-boolean v0, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenRecordingEnabled:Z

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenshotEnabled:Z

    .line 7
    iput-boolean p2, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->imageFromGalleryEnabled:Z

    .line 8
    iput-boolean p3, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenRecordingEnabled:Z

    return-void
.end method


# virtual methods
.method public isImageFromGalleryEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->imageFromGalleryEnabled:Z

    return v0
.end method

.method public isScreenRecordingEnabled()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenRecordingEnabled:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenshotEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenshotEnabled:Z

    return v0
.end method

.method public setImageFromGalleryEnabled(Z)Lcom/instabug/chat/settings/AttachmentTypesState;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->imageFromGalleryEnabled:Z

    return-object p0
.end method

.method public setScreenRecordingEnabled(Z)Lcom/instabug/chat/settings/AttachmentTypesState;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenRecordingEnabled:Z

    return-object p0
.end method

.method public setScreenshotEnabled(Z)Lcom/instabug/chat/settings/AttachmentTypesState;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenshotEnabled:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenshotEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->imageFromGalleryEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/instabug/chat/settings/AttachmentTypesState;->screenRecordingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
