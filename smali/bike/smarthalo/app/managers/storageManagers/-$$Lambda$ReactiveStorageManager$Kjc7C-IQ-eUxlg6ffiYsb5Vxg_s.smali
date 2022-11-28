.class public final synthetic Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;

    invoke-direct {v0}, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;-><init>()V

    sput-object v0, Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;->INSTANCE:Lbike/smarthalo/app/managers/storageManagers/-$$Lambda$ReactiveStorageManager$Kjc7C-IQ-eUxlg6ffiYsb5Vxg_s;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lbike/smarthalo/app/models/SHUser;

    invoke-static {p1}, Lbike/smarthalo/app/managers/storageManagers/ReactiveStorageManager;->lambda$getAndObserveHasDevice$6(Lbike/smarthalo/app/models/SHUser;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
