.class public final Lcom/google/api/ProjectProperties$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ProjectProperties.java"

# interfaces
.implements Lcom/google/api/ProjectPropertiesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/ProjectProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/api/ProjectProperties;",
        "Lcom/google/api/ProjectProperties$Builder;",
        ">;",
        "Lcom/google/api/ProjectPropertiesOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 279
    invoke-static {}, Lcom/google/api/ProjectProperties;->access$000()Lcom/google/api/ProjectProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/api/ProjectProperties$1;)V
    .locals 0

    .line 272
    invoke-direct {p0}, Lcom/google/api/ProjectProperties$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllProperties(Ljava/lang/Iterable;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/api/Property;",
            ">;)",
            "Lcom/google/api/ProjectProperties$Builder;"
        }
    .end annotation

    .line 404
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 405
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$400(Lcom/google/api/ProjectProperties;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addProperties(ILcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 390
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 391
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 392
    invoke-virtual {p2}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Property;

    .line 391
    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$300(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0
.end method

.method public addProperties(ILcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 364
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$300(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0
.end method

.method public addProperties(Lcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 377
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {p1}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/api/Property;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$200(Lcom/google/api/ProjectProperties;Lcom/google/api/Property;)V

    return-object p0
.end method

.method public addProperties(Lcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 352
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$200(Lcom/google/api/ProjectProperties;Lcom/google/api/Property;)V

    return-object p0
.end method

.method public clearProperties()Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 417
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0}, Lcom/google/api/ProjectProperties;->access$500(Lcom/google/api/ProjectProperties;)V

    return-object p0
.end method

.method public getProperties(I)Lcom/google/api/Property;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {v0, p1}, Lcom/google/api/ProjectProperties;->getProperties(I)Lcom/google/api/Property;

    move-result-object p1

    return-object p1
.end method

.method public getPropertiesCount()I
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->getPropertiesCount()I

    move-result v0

    return v0
.end method

.method public getPropertiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/api/Property;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 293
    invoke-virtual {v0}, Lcom/google/api/ProjectProperties;->getPropertiesList()Ljava/util/List;

    move-result-object v0

    .line 292
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeProperties(I)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 429
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1}, Lcom/google/api/ProjectProperties;->access$600(Lcom/google/api/ProjectProperties;I)V

    return-object p0
.end method

.method public setProperties(ILcom/google/api/Property$Builder;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 338
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 339
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    .line 340
    invoke-virtual {p2}, Lcom/google/api/Property$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/api/Property;

    .line 339
    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$100(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0
.end method

.method public setProperties(ILcom/google/api/Property;)Lcom/google/api/ProjectProperties$Builder;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lcom/google/api/ProjectProperties$Builder;->copyOnWrite()V

    .line 326
    iget-object v0, p0, Lcom/google/api/ProjectProperties$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/api/ProjectProperties;

    invoke-static {v0, p1, p2}, Lcom/google/api/ProjectProperties;->access$100(Lcom/google/api/ProjectProperties;ILcom/google/api/Property;)V

    return-object p0
.end method
