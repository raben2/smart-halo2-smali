.class public final Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;
.super Ljava/lang/Object;
.source "SHApiModule_ProvideHttpLoggingInterceptorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lokhttp3/logging/HttpLoggingInterceptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;


# direct methods
.method public constructor <init>(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    return-void
.end method

.method public static create(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;
    .locals 1

    .line 24
    new-instance v0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;

    invoke-direct {v0, p0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;-><init>(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)V

    return-object v0
.end method

.method public static proxyProvideHttpLoggingInterceptor(Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;)Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;->provideHttpLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 28
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;->get()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    return-object v0
.end method

.method public get()Lokhttp3/logging/HttpLoggingInterceptor;
    .locals 2

    .line 18
    iget-object v0, p0, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule_ProvideHttpLoggingInterceptorFactory;->module:Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;

    .line 19
    invoke-virtual {v0}, Lbike/smarthalo/app/dependencyManagement/modules/SHApiModule;->provideHttpLoggingInterceptor()Lokhttp3/logging/HttpLoggingInterceptor;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 18
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/logging/HttpLoggingInterceptor;

    return-object v0
.end method
