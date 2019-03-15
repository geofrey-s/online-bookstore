package api.domain;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "publisher")
public class Publisher extends BaseModel {
    protected String name;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
