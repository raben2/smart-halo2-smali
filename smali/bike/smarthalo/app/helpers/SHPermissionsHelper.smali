.class public Lbike/smarthalo/app/helpers/SHPermissionsHelper;
.super Ljava/lang/Object;
.source "SHPermissionsHelper.java"


# static fields
.field public static final CALLS_PERMISSIONS:[Ljava/lang/String;

.field public static final PERMISSIONS_MULTIPLE_REQUEST:I = 0x7b

.field public static final PERMISSIONS_RECEIVE_CALL:I = 0x7c

.field public static final PERMISSIONS_STORAGE:I = 0xaf

.field public static final REQUEST_BACKGROUND_LOCATION:I = 0x65

.field public static final REQUEST_BLUETOOTH_PERMISSION:I = 0x63

.field public static final REQUEST_LOCATION_ENABLE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "SHPermissionsHelper"

.field public static final blePermissions:[Ljava/lang/String;

.field public static permissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "android.permission.BLUETOOTH_ADMIN"

    .line 43
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->blePermissions:[Ljava/lang/String;

    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 50
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->CALLS_PERMISSIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildAlertMessageNoGps(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 3

    .line 108
    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x3e8

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    .line 111
    new-instance v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    .line 112
    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    .line 114
    sget-object v1, Lcom/google/android/gms/location/LocationServices;->SettingsApi:Lcom/google/android/gms/location/SettingsApi;

    .line 115
    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/location/SettingsApi;->checkLocationSettings(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object p1

    .line 116
    new-instance v0, Lbike/smarthalo/app/helpers/SHPermissionsHelper$2;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public static checkBlePermissions(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 103
    sget-object v0, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->blePermissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkLocationsPermissions(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 99
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 73
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 59
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 63
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 64
    aget-object v3, p1, v2

    invoke-static {p0, v3}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method

.method public static hasAcceptedAllPermissions([I)Z
    .locals 4

    .line 163
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static hasAcceptedNotificationsPermissions(Landroid/content/Context;)Z
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 171
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static requestCallPermissions(Landroid/app/Activity;Lbike/smarthalo/app/models/SHSettings;Z)V
    .locals 2
    .param p1    # Lbike/smarthalo/app/models/SHSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 151
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 152
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x7c

    const v0, 0x7f11007a

    const v1, 0x7f120002

    invoke-static {p0, p1, p2, v0, v1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;III)V

    :cond_1
    return-void
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;III)V
    .locals 2

    .line 77
    invoke-static {p0, p1}, Lbike/smarthalo/app/helpers/SHPermissionsHelper;->checkPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 81
    aget-object v0, p1, v0

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0, p4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 83
    invoke-virtual {v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p3

    const p4, 0x7f110011

    new-instance v1, Lbike/smarthalo/app/helpers/SHPermissionsHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lbike/smarthalo/app/helpers/SHPermissionsHelper$1;-><init>(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 84
    invoke-virtual {p3, p4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x7f110000

    const/4 p2, 0x0

    .line 90
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 92
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->show()V

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
