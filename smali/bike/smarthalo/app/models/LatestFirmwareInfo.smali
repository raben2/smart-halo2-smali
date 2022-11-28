.class public Lbike/smarthalo/app/models/LatestFirmwareInfo;
.super Ljava/lang/Object;
.source "LatestFirmwareInfo.java"


# instance fields
.field public firmwareDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware_description"
    .end annotation
.end field

.field public firmwareUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware_url"
    .end annotation
.end field

.field public firmwareVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firmware_version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
