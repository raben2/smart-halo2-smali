.class public Lcom/instabug/bug/settings/AttachmentsTypesParams;
.super Ljava/lang/Object;
.source "AttachmentsTypesParams.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private allowAttachImageFromGallery:Z

.field private allowScreenRecording:Z

.field private allowTakeExtraScreenshot:Z

.field private shouldTakesInitialScreenshot:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->shouldTakesInitialScreenshot:Z

    .line 3
    iput-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowTakeExtraScreenshot:Z

    .line 4
    iput-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowAttachImageFromGallery:Z

    .line 5
    iput-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowScreenRecording:Z

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->shouldTakesInitialScreenshot:Z

    .line 8
    iput-boolean p2, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowTakeExtraScreenshot:Z

    .line 9
    iput-boolean p3, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowAttachImageFromGallery:Z

    .line 10
    iput-boolean p4, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowScreenRecording:Z

    return-void
.end method


# virtual methods
.method public isAllowAttachImageFromGallery()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowAttachImageFromGallery:Z

    return v0
.end method

.method public isAllowScreenRecording()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowScreenRecording:Z

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

.method public isAllowTakeExtraScreenshot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowTakeExtraScreenshot:Z

    return v0
.end method

.method public isShouldTakesInitialScreenshot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->shouldTakesInitialScreenshot:Z

    return v0
.end method

.method public setAllowAttachImageFromGallery(Z)Lcom/instabug/bug/settings/AttachmentsTypesParams;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowAttachImageFromGallery:Z

    return-object p0
.end method

.method public setAllowScreenRecording(Z)Lcom/instabug/bug/settings/AttachmentsTypesParams;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowScreenRecording:Z

    return-object p0
.end method

.method public setAllowTakeExtraScreenshot(Z)Lcom/instabug/bug/settings/AttachmentsTypesParams;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowTakeExtraScreenshot:Z

    return-object p0
.end method

.method public setShouldTakesInitialScreenshot(Z)Lcom/instabug/bug/settings/AttachmentsTypesParams;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->shouldTakesInitialScreenshot:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->shouldTakesInitialScreenshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowTakeExtraScreenshot:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowAttachImageFromGallery:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/instabug/bug/settings/AttachmentsTypesParams;->allowScreenRecording:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
