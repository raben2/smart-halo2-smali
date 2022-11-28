.class public Lbike/smarthalo/sdk/firmware/FirmwareVersionHelper;
.super Ljava/lang/Object;
.source "FirmwareVersionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFormattedFirmwareVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "\\-"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method public static isFirmwareVersionSufficient(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "\\."

    .line 20
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\."

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 23
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    .line 29
    :cond_1
    array-length v1, p0

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_2

    return v3

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 36
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_6

    .line 37
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 38
    aget-object v5, p0, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    if-ge v5, v4, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    if-ne v5, v4, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move v0, v2

    const/4 p0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    const/4 p0, 0x1

    :cond_7
    return p0

    :cond_8
    :goto_2
    return v0
.end method
