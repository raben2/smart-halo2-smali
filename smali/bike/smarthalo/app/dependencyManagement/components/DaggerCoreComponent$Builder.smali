.class public final Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerCoreComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private analyticsModule:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

.field private appStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

.field private authenticationManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

.field private connectivityModule:Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

.field private contextModule:Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

.field private fitnessStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

.field private gPXParserModule:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

.field private jobServiceCreatorModule:Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

.field private keyManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

.field private powerSavingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

.field private sHApiModule:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

.field private settingsStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

.field private userStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 489
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V
    .locals 0

    .line 462
    invoke-direct {p0}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->keyManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    return-object p0
.end method

.method static synthetic access$1000(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->appStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    return-object p0
.end method

.method static synthetic access$1100(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->powerSavingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    return-object p0
.end method

.method static synthetic access$1200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->gPXParserModule:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    return-object p0
.end method

.method static synthetic access$1300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->connectivityModule:Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    return-object p0
.end method

.method static synthetic access$200(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->contextModule:Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    return-object p0
.end method

.method static synthetic access$300(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->analyticsModule:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    return-object p0
.end method

.method static synthetic access$400(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->sHApiModule:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    return-object p0
.end method

.method static synthetic access$500(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->userStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    return-object p0
.end method

.method static synthetic access$600(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->fitnessStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    return-object p0
.end method

.method static synthetic access$700(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->jobServiceCreatorModule:Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

    return-object p0
.end method

.method static synthetic access$800(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->authenticationManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    return-object p0
.end method

.method static synthetic access$900(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;)Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;
    .locals 0

    .line 462
    iget-object p0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->settingsStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    return-object p0
.end method


# virtual methods
.method public analyticsModule(Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 593
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->analyticsModule:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    return-object p0
.end method

.method public appStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 561
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->appStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    return-object p0
.end method

.method public authenticationManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 556
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->authenticationManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    return-object p0
.end method

.method public build()Lbike/smarthalo/app/dependencyManagement/components/CoreComponent;
    .locals 3

    .line 492
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->keyManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->keyManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    .line 495
    :cond_0
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->contextModule:Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    if-eqz v0, :cond_c

    .line 498
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->analyticsModule:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    if-nez v0, :cond_1

    .line 499
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->analyticsModule:Lbike/smarthalo/app/dependencyManagement/modules/AnalyticsModule;

    .line 501
    :cond_1
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->sHApiModule:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    if-nez v0, :cond_2

    .line 502
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->sHApiModule:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    .line 504
    :cond_2
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->userStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    if-nez v0, :cond_3

    .line 505
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->userStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    .line 507
    :cond_3
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->fitnessStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    if-nez v0, :cond_4

    .line 508
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->fitnessStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    .line 510
    :cond_4
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->jobServiceCreatorModule:Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

    if-nez v0, :cond_5

    .line 511
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->jobServiceCreatorModule:Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

    .line 513
    :cond_5
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->authenticationManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    if-nez v0, :cond_6

    .line 514
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->authenticationManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AuthenticationManagerModule;

    .line 516
    :cond_6
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->settingsStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    if-nez v0, :cond_7

    .line 517
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->settingsStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    .line 519
    :cond_7
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->appStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    if-nez v0, :cond_8

    .line 520
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->appStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/AppStorageManagerModule;

    .line 522
    :cond_8
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->powerSavingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    if-nez v0, :cond_9

    .line 523
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->powerSavingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    .line 525
    :cond_9
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->gPXParserModule:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    if-nez v0, :cond_a

    .line 526
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->gPXParserModule:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    .line 528
    :cond_a
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->connectivityModule:Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    if-nez v0, :cond_b

    .line 529
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    invoke-direct {v0}, Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;-><init>()V

    iput-object v0, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->connectivityModule:Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    .line 531
    :cond_b
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent;-><init>(Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$1;)V

    return-object v0

    .line 496
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectivityModule(Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 583
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->connectivityModule:Lbike/smarthalo/app/dependencyManagement/modules/ConnectivityModule;

    return-object p0
.end method

.method public contextModule(Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 540
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->contextModule:Lbike/smarthalo/app/dependencyManagement/modules/ContextModule;

    return-object p0
.end method

.method public fitnessStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 572
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->fitnessStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/FitnessStorageManagerModule;

    return-object p0
.end method

.method public gPXParserModule(Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 545
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->gPXParserModule:Lbike/smarthalo/app/dependencyManagement/modules/GPXParserModule;

    return-object p0
.end method

.method public jobServiceCreatorModule(Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 588
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->jobServiceCreatorModule:Lbike/smarthalo/app/dependencyManagement/modules/JobServiceCreatorModule;

    return-object p0
.end method

.method public keyManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 550
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->keyManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/KeyManagerModule;

    return-object p0
.end method

.method public powerSavingManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 598
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->powerSavingManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/PowerSavingManagerModule;

    return-object p0
.end method

.method public sHApiModule(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 535
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->sHApiModule:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    return-object p0
.end method

.method public settingsStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 578
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->settingsStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/SettingsStorageManagerModule;

    return-object p0
.end method

.method public userStorageManagerModule(Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;)Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;
    .locals 0

    .line 566
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/components/DaggerCoreComponent$Builder;->userStorageManagerModule:Lbike/smarthalo/app/dependencyManagement/modules/UserStorageManagerModule;

    return-object p0
.end method
