.class public final Lcom/google/rpc/BadRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BadRequest.java"

# interfaces
.implements Lcom/google/rpc/BadRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/rpc/BadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/rpc/BadRequest;",
        "Lcom/google/rpc/BadRequest$Builder;",
        ">;",
        "Lcom/google/rpc/BadRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 786
    invoke-static {}, Lcom/google/rpc/BadRequest;->access$800()Lcom/google/rpc/BadRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/rpc/BadRequest$1;)V
    .locals 0

    .line 779
    invoke-direct {p0}, Lcom/google/rpc/BadRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllFieldViolations(Ljava/lang/Iterable;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;)",
            "Lcom/google/rpc/BadRequest$Builder;"
        }
    .end annotation

    .line 911
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 912
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1200(Lcom/google/rpc/BadRequest;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation$Builder;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 897
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 898
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    .line 899
    invoke-virtual {p2}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/BadRequest$FieldViolation;

    .line 898
    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$1100(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0
.end method

.method public addFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 871
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 872
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$1100(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0
.end method

.method public addFieldViolations(Lcom/google/rpc/BadRequest$FieldViolation$Builder;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 884
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 885
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-virtual {p1}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/rpc/BadRequest$FieldViolation;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1000(Lcom/google/rpc/BadRequest;Lcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0
.end method

.method public addFieldViolations(Lcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 858
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 859
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1000(Lcom/google/rpc/BadRequest;Lcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0
.end method

.method public clearFieldViolations()Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 923
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 924
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0}, Lcom/google/rpc/BadRequest;->access$1300(Lcom/google/rpc/BadRequest;)V

    return-object p0
.end method

.method public getFieldViolations(I)Lcom/google/rpc/BadRequest$FieldViolation;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-virtual {v0, p1}, Lcom/google/rpc/BadRequest;->getFieldViolations(I)Lcom/google/rpc/BadRequest$FieldViolation;

    move-result-object p1

    return-object p1
.end method

.method public getFieldViolationsCount()I
    .locals 1

    .line 811
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-virtual {v0}, Lcom/google/rpc/BadRequest;->getFieldViolationsCount()I

    move-result v0

    return v0
.end method

.method public getFieldViolationsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/rpc/BadRequest$FieldViolation;",
            ">;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    .line 800
    invoke-virtual {v0}, Lcom/google/rpc/BadRequest;->getFieldViolationsList()Ljava/util/List;

    move-result-object v0

    .line 799
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeFieldViolations(I)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 935
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 936
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1}, Lcom/google/rpc/BadRequest;->access$1400(Lcom/google/rpc/BadRequest;I)V

    return-object p0
.end method

.method public setFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation$Builder;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 845
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 846
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    .line 847
    invoke-virtual {p2}, Lcom/google/rpc/BadRequest$FieldViolation$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/rpc/BadRequest$FieldViolation;

    .line 846
    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$900(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0
.end method

.method public setFieldViolations(ILcom/google/rpc/BadRequest$FieldViolation;)Lcom/google/rpc/BadRequest$Builder;
    .locals 1

    .line 832
    invoke-virtual {p0}, Lcom/google/rpc/BadRequest$Builder;->copyOnWrite()V

    .line 833
    iget-object v0, p0, Lcom/google/rpc/BadRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/rpc/BadRequest;

    invoke-static {v0, p1, p2}, Lcom/google/rpc/BadRequest;->access$900(Lcom/google/rpc/BadRequest;ILcom/google/rpc/BadRequest$FieldViolation;)V

    return-object p0
.end method
