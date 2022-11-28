.class public Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;
.super Ljava/lang/Object;
.source "ServiceStorageController.java"

# interfaces
.implements Lbike/smarthalo/sdk/serviceStorage/CurrentDeviceContract;


# static fields
.field public static final ADDRESS_KEY:Ljava/lang/String; = "ADDRESS_KEY"

.field public static final DEFAULT_NAME:Ljava/lang/String; = "SmartHalo"

.field public static final DEFAULT_PASSWORD:Ljava/lang/String; = ""

.field public static final DEVICE_VERSION_KEY:Ljava/lang/String; = "DEVICE_VERSION_KEY"

.field public static final ID_KEY:Ljava/lang/String; = "ID_KEY"

.field public static final IS_TESTER_KEY:Ljava/lang/String; = "IS_TESTER_KEY"

.field public static final LAST_KNOWN_FIRMWARE_VERSION_KEY:Ljava/lang/String; = "LAST_KNOWN_FIRMWARE_VERSION_KEY"

.field public static final NAME_KEY:Ljava/lang/String; = "NAME_KEY"

.field public static final PASSWORD_KEY:Ljava/lang/String; = "PASSWORD_KEY"

.field public static final TAG:Ljava/lang/String; = "ServiceStorageController"


# instance fields
.field public address:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field public deviceVersion:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public isTester:Z

.field public lastKnownFirmwareVersion:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->context:Landroid/content/Context;

    const-string p1, "SmartHalo"

    .line 41
    iput-object p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    const-string p1, ""

    .line 43
    iput-object p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    const-string p1, ""

    .line 44
    iput-object p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->password:Ljava/lang/String;

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->deviceVersion:Ljava/lang/String;

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isTester:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;
    .locals 4

    .line 74
    sget-object v0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 75
    new-instance v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;

    invoke-direct {v2, p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;-><init>(Landroid/content/Context;)V

    const-string p0, "NAME_KEY"

    .line 77
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "NAME_KEY"

    const-string v3, "SmartHalo"

    .line 78
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    :cond_0
    const-string p0, "ADDRESS_KEY"

    .line 81
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "ADDRESS_KEY"

    const-string v3, ""

    .line 82
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    :cond_1
    const-string p0, "ID_KEY"

    .line 85
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "ID_KEY"

    const-string v3, ""

    .line 86
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    :cond_2
    const-string p0, "PASSWORD_KEY"

    .line 89
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "PASSWORD_KEY"

    const-string v3, ""

    .line 90
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->password:Ljava/lang/String;

    :cond_3
    const-string p0, "LAST_KNOWN_FIRMWARE_VERSION_KEY"

    .line 93
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "LAST_KNOWN_FIRMWARE_VERSION_KEY"

    const-string v3, ""

    .line 94
    invoke-interface {v0, p0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->lastKnownFirmwareVersion:Ljava/lang/String;

    :cond_4
    const-string p0, "IS_TESTER_KEY"

    .line 97
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "IS_TESTER_KEY"

    .line 98
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isTester:Z

    :cond_5
    const-string p0, "DEVICE_VERSION_KEY"

    .line 101
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "DEVICE_VERSION_KEY"

    const-string v1, ""

    .line 102
    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->deviceVersion:Ljava/lang/String;

    :cond_6
    return-object v2
.end method

.method private isValidString(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public forgetPassword()V
    .locals 3

    .line 109
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->context:Landroid/content/Context;

    sget-object v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 110
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PASSWORD_KEY"

    .line 112
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PASSWORD_KEY"

    .line 113
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 116
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    .line 117
    iput-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->password:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public forgetSavedDevice()V
    .locals 3

    .line 122
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->context:Landroid/content/Context;

    sget-object v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "NAME_KEY"

    .line 125
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "NAME_KEY"

    .line 126
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    const-string v2, "ADDRESS_KEY"

    .line 129
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ADDRESS_KEY"

    .line 130
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    const-string v2, "ID_KEY"

    .line 133
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ID_KEY"

    .line 134
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    const-string v2, "LAST_KNOWN_FIRMWARE_VERSION_KEY"

    .line 137
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "LAST_KNOWN_FIRMWARE_VERSION_KEY"

    .line 138
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    const-string v2, "DEVICE_VERSION_KEY"

    .line 141
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DEVICE_VERSION_KEY"

    .line 142
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SmartHalo"

    .line 146
    iput-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    const-string v0, ""

    .line 147
    iput-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    const-string v0, ""

    .line 148
    iput-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    const-string v0, ""

    .line 149
    iput-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->lastKnownFirmwareVersion:Ljava/lang/String;

    const-string v0, ""

    .line 150
    iput-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->deviceVersion:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public getCurrentDevice()Lbike/smarthalo/sdk/models/BleDevice;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 242
    invoke-virtual {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Lbike/smarthalo/sdk/models/BleDevice;

    invoke-direct {v0}, Lbike/smarthalo/sdk/models/BleDevice;-><init>()V

    .line 244
    iget-object v1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    iput-object v1, v0, Lbike/smarthalo/sdk/models/BleDevice;->name:Ljava/lang/String;

    .line 245
    iget-object v1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    iput-object v1, v0, Lbike/smarthalo/sdk/models/BleDevice;->address:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    iput-object v1, v0, Lbike/smarthalo/sdk/models/BleDevice;->id:Ljava/lang/String;

    .line 247
    iget-object v1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->deviceVersion:Ljava/lang/String;

    invoke-static {v1}, Lbike/smarthalo/sdk/models/DeviceModel;->fromSavedData(Ljava/lang/String;)Lbike/smarthalo/sdk/models/DeviceModel;

    move-result-object v1

    iput-object v1, v0, Lbike/smarthalo/sdk/models/BleDevice;->deviceModel:Lbike/smarthalo/sdk/models/DeviceModel;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasValidAddress()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasValidDevice()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValidId()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasValidPassword()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->password:Ljava/lang/String;

    invoke-direct {p0, v0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isValidForConnection()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->hasValidPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public logout()V
    .locals 0

    .line 234
    invoke-virtual {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->forgetSavedDevice()V

    .line 235
    invoke-virtual {p0}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->forgetPassword()V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->context:Landroid/content/Context;

    sget-object v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PASSWORD_KEY"

    .line 158
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-direct {p0, p2}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 163
    :cond_0
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 166
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "NAME_KEY"

    .line 167
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_2

    const-string p2, "SmartHalo"

    .line 168
    :cond_2
    iput-object p2, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->name:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, "ADDRESS_KEY"

    .line 169
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_4

    const-string p2, ""

    .line 170
    :cond_4
    iput-object p2, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->address:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const-string v0, "DEVICE_VERSION_KEY"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p2, :cond_6

    const-string p2, ""

    .line 172
    :cond_6
    iput-object p2, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->deviceVersion:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v0, "ID_KEY"

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-nez p2, :cond_8

    const-string p2, ""

    .line 174
    :cond_8
    iput-object p2, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->id:Ljava/lang/String;

    goto :goto_1

    :cond_9
    const-string v0, "PASSWORD_KEY"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 176
    invoke-direct {p0, p2}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 177
    iput-object p2, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->password:Ljava/lang/String;

    goto :goto_1

    :cond_a
    const-string v0, "LAST_KNOWN_FIRMWARE_VERSION_KEY"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 180
    invoke-direct {p0, p2}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 181
    iput-object p2, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->lastKnownFirmwareVersion:Ljava/lang/String;

    :cond_b
    :goto_1
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 209
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "ID_KEY"

    .line 213
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public setIsTester(Z)V
    .locals 3

    .line 223
    iget-object v0, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->context:Landroid/content/Context;

    sget-object v1, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IS_TESTER_KEY"

    .line 226
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iput-boolean p1, p0, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->isTester:Z

    :cond_0
    return-void
.end method

.method public setName([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 217
    array-length v0, p1

    if-lez v0, :cond_0

    const-string v0, "NAME_KEY"

    .line 218
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, v1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 195
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PASSWORD_KEY"

    .line 199
    invoke-virtual {p0, v0, p1}, Lbike/smarthalo/sdk/serviceStorage/ServiceStorageController;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
