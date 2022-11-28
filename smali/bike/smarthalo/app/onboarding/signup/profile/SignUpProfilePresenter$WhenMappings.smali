.class public final synthetic Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->values()[Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Available:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    invoke-virtual {v1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->NotAvailable:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    invoke-virtual {v1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->Error:Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;

    invoke-virtual {v1}, Lbike/smarthalo/app/managers/cloudManagers/UserCloudManager$EmailAvailability;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->values()[Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->Success:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->EmailTaken:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->Failure:Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;

    invoke-virtual {v1}, Lbike/smarthalo/app/onboarding/signup/profile/SignUpProfilePresenter$SignUpResult;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
