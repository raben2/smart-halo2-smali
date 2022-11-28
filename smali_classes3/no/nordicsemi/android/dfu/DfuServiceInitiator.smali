.class public final Lno/nordicsemi/android/dfu/DfuServiceInitiator;
.super Ljava/lang/Object;
.source "DfuServiceInitiator.java"


# static fields
.field public static final DEFAULT_MBR_SIZE:I = 0x1000

.field public static final DEFAULT_PRN_VALUE:I = 0xc

.field public static final SCOPE_APPLICATION:I = 0x2

.field public static final SCOPE_SYSTEM_COMPONENTS:I = 0x1


# instance fields
.field private buttonlessDfuWithBondSharingUuids:[Landroid/os/Parcelable;

.field private buttonlessDfuWithoutBondSharingUuids:[Landroid/os/Parcelable;

.field private currentMtu:I

.field private dataObjectDelay:J

.field private final deviceAddress:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private disableNotification:Z

.field private disableResume:Z

.field private enableUnsafeExperimentalButtonlessDfu:Z

.field private experimentalButtonlessDfuUuids:[Landroid/os/Parcelable;

.field private filePath:Ljava/lang/String;

.field private fileResId:I

.field private fileType:I

.field private fileUri:Landroid/net/Uri;

.field private forceDfu:Z

.field private forceScanningForNewAddressInLegacyDfu:Z

.field private initFilePath:Ljava/lang/String;

.field private initFileResId:I

.field private initFileUri:Landroid/net/Uri;

.field private keepBond:Z

.field private legacyDfuUuids:[Landroid/os/Parcelable;

.field private mbrSize:I

.field private mimeType:Ljava/lang/String;

.field private mtu:I

.field private numberOfPackets:I

.field private numberOfRetries:I

.field private packetReceiptNotificationsEnabled:Ljava/lang/Boolean;

.field private restoreBond:Z

.field private secureDfuUuids:[Landroid/os/Parcelable;

.field private startAsForegroundService:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->disableNotification:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->startAsForegroundService:Z

    const/4 v1, -0x1

    .line 76
    iput v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    .line 80
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->forceDfu:Z

    .line 81
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->forceScanningForNewAddressInLegacyDfu:Z

    .line 82
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->enableUnsafeExperimentalButtonlessDfu:Z

    .line 83
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->disableResume:Z

    .line 84
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->numberOfRetries:I

    const/16 v0, 0x1000

    .line 85
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mbrSize:I

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->dataObjectDelay:J

    const/16 v0, 0xc

    .line 89
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->numberOfPackets:I

    const/16 v0, 0x205

    .line 91
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mtu:I

    const/16 v0, 0x17

    .line 92
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->currentMtu:I

    .line 108
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceAddress:Ljava/lang/String;

    return-void
.end method

.method public static createDfuNotificationChannel(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 887
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "dfu"

    sget v2, Lno/nordicsemi/android/dfu/R$string;->dfu_channel_name:I

    .line 888
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 889
    sget v1, Lno/nordicsemi/android/dfu/R$string;->dfu_channel_description:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 890
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, 0x1

    .line 891
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 894
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    .line 896
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    return-void
.end method

.method private init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    const-string v0, "application/zip"

    .line 857
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    .line 861
    iput-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    .line 862
    iput p3, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileResId:I

    return-object p0

    .line 858
    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "Init file must be located inside the ZIP"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 870
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileUri:Landroid/net/Uri;

    .line 871
    iput-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->filePath:Ljava/lang/String;

    .line 872
    iput p3, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileResId:I

    .line 873
    iput p4, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    .line 874
    iput-object p5, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    const-string p1, "application/zip"

    .line 877
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 878
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    .line 879
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 880
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileResId:I

    :cond_0
    return-object p0
.end method


# virtual methods
.method public disableMtuRequest()Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 1

    const/4 v0, 0x0

    .line 406
    iput v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mtu:I

    return-object p0
.end method

.method public disableResume()Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 1

    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->disableResume:Z

    return-object p0
.end method

.method public setBinOrHex(II)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p2    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move v3, p2

    move v4, p1

    .line 731
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1

    .line 730
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You must specify the file type"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBinOrHex(ILandroid/net/Uri;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p2

    move v4, p1

    .line 681
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1

    .line 680
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You must specify the file type"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBinOrHex(ILandroid/net/Uri;Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p2    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v4, p1

    .line 715
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1

    .line 714
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You must specify the file type"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBinOrHex(ILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v5, "application/octet-stream"

    move-object v0, p0

    move-object v2, p2

    move v4, p1

    .line 697
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1

    .line 696
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You must specify the file type"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCurrentMtu(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 395
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->currentMtu:I

    return-object p0
.end method

.method public setCustomUuidsForButtonlessDfuWithBondSharing(Ljava/util/UUID;Ljava/util/UUID;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 3
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 584
    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 585
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 p1, 0x0

    aput-object v2, v0, p1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 586
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    :cond_1
    aput-object v1, v0, p1

    .line 587
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->buttonlessDfuWithBondSharingUuids:[Landroid/os/Parcelable;

    return-object p0
.end method

.method public setCustomUuidsForButtonlessDfuWithoutBondSharing(Ljava/util/UUID;Ljava/util/UUID;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 3
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 604
    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 605
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 p1, 0x0

    aput-object v2, v0, p1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 606
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    :cond_1
    aput-object v1, v0, p1

    .line 607
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->buttonlessDfuWithoutBondSharingUuids:[Landroid/os/Parcelable;

    return-object p0
.end method

.method public setCustomUuidsForExperimentalButtonlessDfu(Ljava/util/UUID;Ljava/util/UUID;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 3
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 564
    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 565
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 p1, 0x0

    aput-object v2, v0, p1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 566
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    :cond_1
    aput-object v1, v0, p1

    .line 567
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->experimentalButtonlessDfuUuids:[Landroid/os/Parcelable;

    return-object p0
.end method

.method public setCustomUuidsForLegacyDfu(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 3
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x4

    .line 516
    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 517
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 p1, 0x0

    aput-object v2, v0, p1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 518
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    aput-object v2, v0, p1

    const/4 p1, 0x2

    if-eqz p3, :cond_2

    .line 519
    new-instance p2, Landroid/os/ParcelUuid;

    invoke-direct {p2, p3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_2

    :cond_2
    move-object p2, v1

    :goto_2
    aput-object p2, v0, p1

    const/4 p1, 0x3

    if-eqz p4, :cond_3

    .line 520
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p4}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    :cond_3
    aput-object v1, v0, p1

    .line 521
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->legacyDfuUuids:[Landroid/os/Parcelable;

    return-object p0
.end method

.method public setCustomUuidsForSecureDfu(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 3
    .param p1    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x3

    .line 540
    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 541
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 p1, 0x0

    aput-object v2, v0, p1

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 542
    new-instance v2, Landroid/os/ParcelUuid;

    invoke-direct {v2, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    aput-object v2, v0, p1

    const/4 p1, 0x2

    if-eqz p3, :cond_2

    .line 543
    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p3}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    :cond_2
    aput-object v1, v0, p1

    .line 544
    iput-object v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->secureDfuUuids:[Landroid/os/Parcelable;

    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 121
    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setDisableNotification(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 133
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->disableNotification:Z

    return-object p0
.end method

.method public setForceDfu(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 285
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->forceDfu:Z

    return-object p0
.end method

.method public setForceScanningForNewAddressInLegacyDfu(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 308
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->forceScanningForNewAddressInLegacyDfu:Z

    return-object p0
.end method

.method public setForeground(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 150
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->startAsForegroundService:Z

    return-object p0
.end method

.method public setInitFile(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 770
    invoke-direct {p0, v0, v0, p1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public setInitFile(Landroid/net/Uri;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 744
    invoke-direct {p0, p1, v0, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public setInitFile(Landroid/net/Uri;Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 1
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 784
    invoke-direct {p0, p1, p2, v0}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public setInitFile(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 757
    invoke-direct {p0, v0, p1, v1}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public setKeepBond(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 173
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->keepBond:Z

    return-object p0
.end method

.method public setMbrSize(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 456
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mbrSize:I

    return-object p0
.end method

.method public setMtu(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x17L
            to = 0x205L
        .end annotation
    .end param

    .line 373
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mtu:I

    return-object p0
.end method

.method public setNumberOfRetries(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 348
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->numberOfRetries:I

    return-object p0
.end method

.method public setPacketsReceiptNotificationsEnabled(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 229
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->packetReceiptNotificationsEnabled:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setPacketsReceiptNotificationsValue(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    .line 247
    :goto_0
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->numberOfPackets:I

    return-object p0
.end method

.method public setPrepareDataObjectDelay(J)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 214
    iput-wide p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->dataObjectDelay:J

    return-object p0
.end method

.method public setRestoreBond(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 190
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->restoreBond:Z

    return-object p0
.end method

.method public setScope(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 2

    const-string v0, "application/zip"

    .line 422
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 425
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p1, v0, :cond_1

    .line 427
    iput v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 429
    iput p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    :goto_0
    return-object p0

    .line 430
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unknown scope"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 423
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Scope can be set only for a ZIP file"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUnsafeExperimentalButtonlessServiceInSecureDfuEnabled(Z)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 0

    .line 494
    iput-boolean p1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->enableUnsafeExperimentalButtonlessDfu:Z

    return-object p0
.end method

.method public setZip(I)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param

    const-string v5, "application/zip"

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p1

    .line 647
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public setZip(Landroid/net/Uri;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v5, "application/zip"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 621
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public setZip(Landroid/net/Uri;Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v5, "application/zip"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 660
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public setZip(Ljava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v5, "application/zip"

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 634
    invoke-direct/range {v0 .. v5}, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->init(Landroid/net/Uri;Ljava/lang/String;IILjava/lang/String;)Lno/nordicsemi/android/dfu/DfuServiceInitiator;

    move-result-object p1

    return-object p1
.end method

.method public start(Landroid/content/Context;Ljava/lang/Class;)Lno/nordicsemi/android/dfu/DfuServiceController;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Lno/nordicsemi/android/dfu/DfuBaseService;",
            ">;)",
            "Lno/nordicsemi/android/dfu/DfuServiceController;"
        }
    .end annotation

    .line 794
    iget v0, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 797
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_ADDRESS"

    .line 799
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_DEVICE_NAME"

    .line 800
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_NOTIFICATION"

    .line 801
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->disableNotification:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_FOREGROUND_SERVICE"

    .line 802
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->startAsForegroundService:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_MIME_TYPE"

    .line 803
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_TYPE"

    .line 804
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileType:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_URI"

    .line 805
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_PATH"

    .line 806
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->filePath:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_FILE_RES_ID"

    .line 807
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->fileResId:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_URI"

    .line 808
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileUri:Landroid/net/Uri;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_PATH"

    .line 809
    iget-object v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFilePath:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_INIT_FILE_RES_ID"

    .line 810
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->initFileResId:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_KEEP_BOND"

    .line 811
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->keepBond:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_RESTORE_BOND"

    .line 812
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->restoreBond:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_FORCE_DFU"

    .line 813
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->forceDfu:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_FORCE_SCANNING_FOR_BOOTLOADER_IN_LEGACY_DFU"

    .line 814
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->forceScanningForNewAddressInLegacyDfu:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_DISABLE_RESUME"

    .line 815
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->disableResume:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_MAX_DFU_ATTEMPTS"

    .line 816
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->numberOfRetries:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_MBR_SIZE"

    .line 817
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mbrSize:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_DATA_OBJECT_DELAY"

    .line 818
    iget-wide v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->dataObjectDelay:J

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 819
    iget p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->mtu:I

    if-lez p2, :cond_0

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_MTU"

    .line 820
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_CURRENT_MTU"

    .line 821
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->currentMtu:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_UNSAFE_EXPERIMENTAL_BUTTONLESS_DFU"

    .line 822
    iget-boolean v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->enableUnsafeExperimentalButtonlessDfu:Z

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 824
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->packetReceiptNotificationsEnabled:Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_PRN_ENABLED"

    .line 825
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p2, "no.nordicsemi.android.dfu.extra.EXTRA_PRN_VALUE"

    .line 826
    iget v1, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->numberOfPackets:I

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    :cond_1
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->legacyDfuUuids:[Landroid/os/Parcelable;

    if-eqz p2, :cond_2

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_CUSTOM_UUIDS_FOR_LEGACY_DFU"

    .line 834
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 835
    :cond_2
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->secureDfuUuids:[Landroid/os/Parcelable;

    if-eqz p2, :cond_3

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_CUSTOM_UUIDS_FOR_SECURE_DFU"

    .line 836
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 837
    :cond_3
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->experimentalButtonlessDfuUuids:[Landroid/os/Parcelable;

    if-eqz p2, :cond_4

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_CUSTOM_UUIDS_FOR_EXPERIMENTAL_BUTTONLESS_DFU"

    .line 838
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 839
    :cond_4
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->buttonlessDfuWithoutBondSharingUuids:[Landroid/os/Parcelable;

    if-eqz p2, :cond_5

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_CUSTOM_UUIDS_FOR_BUTTONLESS_DFU_WITHOUT_BOND_SHARING"

    .line 840
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 841
    :cond_5
    iget-object p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->buttonlessDfuWithBondSharingUuids:[Landroid/os/Parcelable;

    if-eqz p2, :cond_6

    const-string v1, "no.nordicsemi.android.dfu.extra.EXTRA_CUSTOM_UUIDS_FOR_BUTTONLESS_DFU_WITH_BOND_SHARING"

    .line 842
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 844
    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_7

    iget-boolean p2, p0, Lno/nordicsemi/android/dfu/DfuServiceInitiator;->startAsForegroundService:Z

    if-eqz p2, :cond_7

    .line 847
    invoke-virtual {p1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 849
    :cond_7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 851
    :goto_0
    new-instance p2, Lno/nordicsemi/android/dfu/DfuServiceController;

    invoke-direct {p2, p1}, Lno/nordicsemi/android/dfu/DfuServiceController;-><init>(Landroid/content/Context;)V

    return-object p2

    .line 795
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "You must specify the firmware file before starting the service"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
